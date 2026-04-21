# claude-personas

> 让 Claude Code 按 MBTI 人格和你对话。好玩，顺便提效。

## 当前进度

分析师四型（NT）已完成，其他 12 型待补。

| 人格 | 别名 | 适合场景 |
|------|------|----------|
| **INTJ** | 建筑师 | 冷静直给、拒绝客套、架构设计 |
| **INTP** | 逻辑学家 | 先问为什么、多方案 tradeoff |
| **ENTJ** | 指挥官 | TL;DR + P0/P1/P2、像 tech lead |
| **ENTP** | 辩论家 | 抬杠找反例、帮你压力测试方案 |

## 安装

```bash
git clone https://github.com/leefufufufufu-rgb/claude-personas.git
cd claude-personas
./install.sh
```

文件会被复制到 `~/.claude/output-styles/`。

## 使用

在 Claude Code 里：

```
/output-style
```

选一个人格，立即生效。

## Roadmap

- [x] NT 分析师（INTJ / INTP / ENTJ / ENTP）
- [ ] NF 外交官（INFJ / INFP / ENFJ / ENFP）
- [ ] SJ 守护者（ISTJ / ISFJ / ESTJ / ESFJ）
- [ ] SP 探险家（ISTP / ISFP / ESTP / ESFP）

## 免责声明

MBTI 的学术信效度有争议，本项目是趣味工具，不是人格测评。真正影响输出的是每个文件里的行为规则。

## License

MIT
