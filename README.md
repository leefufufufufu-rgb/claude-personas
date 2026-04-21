<div align="center">

# 🎭 claude-personas

**让 Claude Code 按 MBTI 16 型人格和你对话**
**Give Claude Code a personality — 16 MBTI types with auto-switching**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-output--style-8A2BE2)](https://docs.claude.com/en/docs/claude-code/output-styles)
[![Bilingual](https://img.shields.io/badge/docs-中文%20%7C%20English-blue)](README.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Personas](https://img.shields.io/badge/personas-16%20%2B%20Auto-ff69b4)](styles/)

> 中英双语 · 16 型独立行为规则 · 🪄 Auto 综合场景自动切换
> Bilingual · 16 distinct behavioral rulesets · 🪄 Auto mode adapts to context

**[🚀 快速安装 Quick Install](#-安装--install)** ·
**[🧩 16 型速查 Personas](#-16-型速查--the-16-personas)** ·
**[🪄 Auto 模式 Auto Mode](#-auto-模式是怎么工作的--how-auto-works)** ·
**[💡 推荐玩法 Combos](#-推荐玩法--recommended-combos)**

</div>

---

## ✨ 特色 / Features

- **16 型人格**：每一型都有独立的行为规则，不只是换语气
- **🪄 Auto 变色龙模式**：根据你的语气和场景自动切换最合适的人格
- **中英双语**：每个人格都有中英两个版本，随时切换
- **免费开源**：MIT 协议，魔改随意

**16 personas**, each with distinct *behavioral rules* — not just tone skins.
**🪄 Auto mode** switches persona automatically based on your scenario signals.
**Bilingual** (Chinese / English). **MIT licensed**, fork freely.

---

## 🧩 16 型速查 / The 16 Personas

### 🧠 NT 分析师 / Analysts
| Type | 中文别名 | EN Alias | 适合 / Best for |
|------|----------|----------|-----------------|
| **INTJ** | 建筑师 | Architect | 冷静直给、架构设计 / cold direct, architecture |
| **INTP** | 逻辑学家 | Logician | 多方案 tradeoff / tradeoff analysis |
| **ENTJ** | 指挥官 | Commander | TL;DR + 优先级 / exec summary + priorities |
| **ENTP** | 辩论家 | Debater | 抬杠找反例 / challenge assumptions |

### ❤️ NF 外交官 / Diplomats
| Type | 中文别名 | EN Alias | 适合 / Best for |
|------|----------|----------|-----------------|
| **INFJ** | 提倡者 | Advocate | 共情 + 长期视角 / empathy + long view |
| **INFP** | 调停者 | Mediator | 温和、鼓励式 / gentle, encouraging |
| **ENFJ** | 主人公 | Protagonist | 教练式引导 / Socratic coaching |
| **ENFP** | 竞选者 | Campaigner | 头脑风暴 / brainstorming |

### 🛡️ SJ 守护者 / Sentinels
| Type | 中文别名 | EN Alias | 适合 / Best for |
|------|----------|----------|-----------------|
| **ISTJ** | 物流师 | Logistician | 流程化、按规范 / by the book |
| **ISFJ** | 守卫者 | Defender | 兼容性、考虑调用方 / compatibility-first |
| **ESTJ** | 总经理 | Executive | 只给 diff / just the diff |
| **ESFJ** | 执政官 | Consul | 团队协作 / team-minded PR |

### 🎯 SP 探险家 / Explorers
| Type | 中文别名 | EN Alias | 适合 / Best for |
|------|----------|----------|-----------------|
| **ISTP** | 鉴赏家 | Virtuoso | 先跑 demo / demo-first |
| **ISFP** | 冒险家 | Adventurer | 审美优先 / aesthetic-driven |
| **ESTP** | 企业家 | Entrepreneur | 快速 hack / ship fast |
| **ESFP** | 表演者 | Entertainer | 类比讲解 / lively explainer |

### 🪄 Auto 综合场景 / Auto Mode
| Type | 中文别名 | EN Alias | 说明 |
|------|----------|----------|------|
| **Auto** | 变色龙 | Chameleon | 自动识别场景切换人格 / auto-switches persona by context |

---

## 🚀 安装 / Install

```bash
git clone https://github.com/leefufufufufu-rgb/claude-personas.git
cd claude-personas

# 安装中英双语（默认）/ Install both languages (default)
./install.sh

# 或只装中文 / Chinese only
./install.sh zh

# 或只装英文 / English only
./install.sh en
```

文件会复制到 `~/.claude/output-styles/`，命名为 `INTJ-zh.md`、`INTJ-en.md` 等。
Files are copied to `~/.claude/output-styles/` with language suffix.

---

## 🎮 使用 / Usage

在 Claude Code 里 / In Claude Code:

```
/output-style
```

选一个人格（比如 `INTJ-zh` 或 `Auto-en`），立即生效。
Pick one (e.g. `INTJ-zh` or `Auto-en`), effect is immediate.

---

## 💡 推荐玩法 / Recommended Combos

| 场景 / Scenario | 推荐人格 / Recommended |
|-----------------|------------------------|
| 早上做需求发散 / morning brainstorm | ENFP |
| 写代码赶工 / coding under deadline | ESTP / ESTJ |
| Code Review | ENTP / ISFJ |
| 学新东西 / learning something new | ENFJ / ESFP |
| 架构设计 / architecture design | INTJ / INFJ |
| 不知道切哪个 / not sure which to pick | **Auto** |

---

## 🎭 Auto 模式是怎么工作的 / How Auto works

Auto 人格内置一张"场景识别表" —— 根据你消息里的关键词和情绪信号，自动采用对应人格的行为规则。比如：

- 你说"明天要交" → 切到 ESTP（hack 可接受）
- 你说"选 A 还是 B" → 切到 INTP（多方案对比）
- 你语气烦躁（"又不行！"）→ 切到 INFJ（先共情再技术）

Auto embeds a scenario table — based on keywords and emotional signals, it adopts the matching persona's rules. Examples:

- "ship tomorrow" → ESTP mode (hacks allowed)
- "A or B?" → INTP mode (comparison)
- "Why AGAIN?!" → INFJ mode (empathy first)

详见 [styles/zh/Auto.md](styles/zh/Auto.md) / [styles/en/Auto.md](styles/en/Auto.md)。

---

## 🎬 同一个问题，四种回答 / Same Question, Four Personalities

**问 / Q**："这段 SQL 有点慢，帮我优化一下 / This SQL is slow, help me optimize"

<table>
<tr><th>INTJ 建筑师</th><th>INTP 逻辑学家</th></tr>
<tr><td>

三处问题：(1) `user_id` 没走索引；(2) `N+1` 在 orders 连表上；(3) 用了 `SELECT *`。改写如下：... 预计 QPS 从 50 提到 500。

</td><td>

先确认：你说的"慢"是 P99 慢还是平均慢？两种成因不同。假设 P99，常见三类根因 —— 索引缺失、锁等待、数据倾斜。偏向根因 1，但建议先 `EXPLAIN` 确认。

</td></tr>
<tr><th>ENTJ 指挥官</th><th>ENTP 辩论家</th></tr>
<tr><td>

**TL;DR**: 加复合索引 `(user_id, created_at)`，P0 就这一件事。
- P0: 加索引，10 分钟上线，立降 80%
- P1: 业务侧分页加上限
- 风险：建索引走低峰期

</td><td>

等等 —— 你确定瓶颈在这条 SQL 吗？slow log 里它排第几？有时候真正的罪魁是旁边那条每秒跑 1000 次的小查询。先 profile。如果确认就是它，干脆缓存掉？

</td></tr>
</table>

---

## 🗺️ Roadmap

- [x] NT 分析师四型（INTJ / INTP / ENTJ / ENTP）
- [x] NF 外交官四型（INFJ / INFP / ENFJ / ENFP）
- [x] SJ 守护者四型（ISTJ / ISFJ / ESTJ / ESFJ）
- [x] SP 探险家四型（ISTP / ISFP / ESTP / ESFP）
- [x] 🪄 Auto 综合场景自动切换
- [x] 中英双语 / Bilingual (zh + en)
- [ ] `/persona random` 每日随机人格 / daily random persona
- [ ] `/persona match` 根据 git log 推荐人格 / recommend persona from git history
- [ ] 16 宫格对照图 / 16-grid comparison chart (PNG)
- [ ] 社区贡献的第 17 型（你的本命人格版本）/ community-contributed 17th type

## 🤝 贡献 / Contributing

欢迎提 PR 贡献新的人格变体、修正行为规则、翻译或补全。见 [CONTRIBUTING.md](CONTRIBUTING.md)。

Contributions welcome — new persona variants, behavior tweaks, translations. See [CONTRIBUTING.md](CONTRIBUTING.md).

## ⭐ Star History

如果觉得好玩给个 Star 支持下 · If you find it fun, a star means a lot.

---

## ⚠️ 免责声明 / Disclaimer

MBTI 的学术信效度有争议，本项目是趣味工具，不是严肃人格测评。真正影响输出的是每个文件里的行为规则 —— 欢迎魔改。

MBTI has contested academic validity. This project is a fun tool, not a psychometric assessment. What actually shapes the output is the behavioral rules in each file — feel free to fork and tune.

---

## 📜 License

MIT
