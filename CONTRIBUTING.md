# Contributing to claude-personas

欢迎贡献！/ Contributions welcome!

## 你可以贡献什么 / What you can contribute

### 1. 新人格变体 / New persona variants

比如：
- 基于九型人格（Enneagram）的变体
- 基于职业的（"架构师模式"、"SRE 模式"）
- 基于流派（"极简主义者"、"函数式狂热粉"）
- 好玩的（"不耐烦的高级工程师"、"永远鼓励的导师"）

E.g. Enneagram-based variants, role-based (Architect / SRE), paradigm-based (Minimalist / FP zealot), or just fun (Impatient Senior / Endlessly Encouraging Mentor).

### 2. 修正现有人格的行为规则 / Refine existing behavior rules

实际用下来觉得某一型的某条规则"好玩但碍事"或"应该更强硬"，直接 PR 改。
If you use a persona and find a rule "fun but annoying" or "should be stronger", PR it.

### 3. 翻译 / Translations

目前有中英双语，欢迎加其他语言：日语、韩语、西语、德语等。
Bilingual today (中/en). Other languages welcome: 日本語, 한국어, Español, Deutsch, etc.

### 4. 宣传素材 / Promo assets

16 宫格对照图、演示 GIF、博客文章、视频等。
16-grid comparison images, demo GIFs, blog posts, videos.

## 人格文件格式 / Persona file format

每个人格是一个 markdown 文件，带 frontmatter：

```markdown
---
name: <Display Name>
description: <One-line description>
---

You are now the <TYPE> coding partner.

## Core traits
- ...

## Response style
- ...

## Forbidden
- ...

## Voice sample
**Bad**: ...
**Good**: ...
```

**关键点 / Key points**:
- `Forbidden` 部分非常重要 —— 没有禁区的人格会漂移回"通用 AI"
- `Voice sample` 用 Bad/Good 对比，比抽象描述更有效
- 行为规则要具体可执行，不要写"友好"、"专业"这种抽象词

## 提 PR 前 / Before PR

1. Fork + 新分支
2. 在 `styles/zh/` 和 `styles/en/` 都加/改对应文件
3. 本地 `./install.sh` 测试新人格是否能在 `/output-style` 菜单出现
4. PR 描述写清楚：人格名、核心特质、使用场景

1. Fork + new branch
2. Add/edit files in both `styles/zh/` and `styles/en/`
3. Test via `./install.sh` and `/output-style` menu
4. PR description: persona name, core traits, use cases

## License

贡献的代码默认采用 MIT 协议。
Contributions are MIT-licensed by default.
