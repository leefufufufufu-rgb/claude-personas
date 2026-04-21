# claude-personas

> 让 Claude Code 按 MBTI 16 型人格和你对话。中英双语，含 Auto 自动切换模式。
> Give Claude Code a personality. 16 MBTI types, bilingual (中/EN), with an Auto mode that adapts.

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

## ⚠️ 免责声明 / Disclaimer

MBTI 的学术信效度有争议，本项目是趣味工具，不是严肃人格测评。真正影响输出的是每个文件里的行为规则 —— 欢迎魔改。

MBTI has contested academic validity. This project is a fun tool, not a psychometric assessment. What actually shapes the output is the behavioral rules in each file — feel free to fork and tune.

---

## 📜 License

MIT
