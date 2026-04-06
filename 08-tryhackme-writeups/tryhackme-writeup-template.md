# 🔐 [Nombre del Room] — TryHackMe Write-up

## Room Info

| Field | Details |
|---|---|
| **Room** | [Nombre del Room] |
| **Platform** | TryHackMe |
| **Path** | [SOC Level 1 / Cybersecurity 101 / SAL1 / Jr. Penetration Tester] |
| **Difficulty** | [Easy / Medium / Hard] |
| **Category** | [Blue Team / Red Team / Forensics / Network / Web] |
| **Completed** | [Fecha: April 2026] |
| **Room URL** | [https://tryhackme.com/room/nombre-del-room] |

---

## Objective

Describe en 2-3 líneas qué busca enseñar este room.

> Example: "This room introduces the fundamentals of network traffic analysis using Wireshark. The goal is to identify suspicious activity within packet captures by applying display filters and protocol analysis techniques."

---

## Tools Used

| Tool | Purpose |
|---|---|
| `nmap` | Port scanning and service enumeration |
| `Wireshark` | Network packet analysis |
| `Splunk` | Log analysis and SIEM queries |
| *(agrega o elimina según el room)* | |

---

## Process

> This section documents the step-by-step methodology applied during the room. Screenshots are included for key findings.

### Task 1 — [Nombre de la tarea]

Describe qué pedía la tarea y cómo la abordaste.

```bash
# Comando que usaste (si aplica)
nmap -sV -p- 10.10.x.x
```

![Screenshot de la tarea 1](./screenshots/task1-output.png)

**Finding:** Qué encontraste o qué respondiste y por qué.

---

### Task 2 — [Nombre de la tarea]

Describe el proceso...

```bash
# Otro comando si aplica
```

![Screenshot de la tarea 2](./screenshots/task2-output.png)

**Finding:** Qué encontraste.

---

### Task N — [Nombre de la tarea]

*(Repite este bloque para cada tarea del room)*

---

## Key Findings

Resume los hallazgos más importantes del room en una tabla o lista. No incluyas flags directamente — describe el proceso que te llevó a la respuesta.

| Task | Key Finding | Technique Used |
|---|---|---|
| Task 1 | [Describe el hallazgo sin la flag] | [Técnica aplicada] |
| Task 2 | [Describe el hallazgo sin la flag] | [Técnica aplicada] |

---

## Lessons Learned

Esta es la sección más valiosa para tu portafolio. Responde:

- **¿Qué concepto no conocías antes de este room?**
- **¿Qué herramienta o técnica practicaste por primera vez?**
- **¿Qué harías diferente la próxima vez?**
- **¿Cómo aplica esto a un rol real de SOC Analyst / Security Analyst?**

> Example: "This room reinforced how critical network baseline knowledge is for detecting anomalies. Before this, I was aware of Wireshark conceptually, but applying display filters like `http.request.method == "POST"` to isolate suspicious form submissions gave me a much more practical understanding of how analysts triage PCAP files during incident response."

---

## References

- [TryHackMe Room](https://tryhackme.com/room/nombre-del-room)
- [Recurso relacionado — documentación, artículo, etc.]
