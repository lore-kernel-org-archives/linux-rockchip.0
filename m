Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A496D37E4D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPgQkcOrcmG8a2G5Ccgv6/5yk9DIRfpw0Qp1t20f4C8=; b=SvZuMrTPmLOlyi
	gIeKMUOAUW+8jLFeDJYz9D6KoixcgiuUiKpp/NtZjgHivc3Hjvj9kFYDgR6rBfQ6N6xD2+wHEJ4q0
	WJ/08orA2zH2oIBItwUinf0MZDGd9gdVlvRb9SyUui8msBLA3JeQkFH/Co6X+7fHhjkUXuRuiqdF0
	EVQoahLOFVUhKBZAKurpmh602jr0ATh96jLQ42j1QMkBjXWZK/E+LhgLH9gYgzZvkxtrotenN6K2z
	aWF3TPSD1sUibrNFyrgK2VQ/3USt63PAYDzy9/p74TmwfNvMwj1w/0ZDwk6OdCBYzzyqcEE9rVoK1
	l3Uzx4hNPWifCk+YskDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2qa-00000009i47-3yMG;
	Wed, 14 Jan 2026 15:31:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2pY-00000009hSr-3kAa
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:30:55 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EFC2Fe1943032
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YA3VmuPxJ2L3DtrIn8wKabMcttC/MOL2mTB3zxLU6Gg=; b=CymxLC2Nh+Yhitd8
	i2VCkipA2Jvgf58dNARhSsT8C3NBVFuhB0in5/s3k2byqbKN2anrEGds2yvZ0cT3
	HsKWrN1azY5/EbZtPj1RgkYGi7uNgFYsmUNZvbzqrQF1UBcNuIOhSJoSKpPFum/u
	QjvnNThfwoYjH1wOtZj1emLDqD3KisvQGrK3TjABDHrH8oCkwD7M3Cq2ycUIUVLo
	EyImefGOULzlqVV38fX0afy7dTmZn9JKe32HxRjrZxhMeDK6l9+WPDORB5pf1SjK
	8mf1eqt4rMwywhewmr9BDmuYFEvSD8GHa8Z4iL0KPBcfA91OEd6GMxp5lCqwlV7t
	kPXvzw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp7b6sjrq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 15:30:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e235d4d2so3415892885a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768404643; x=1769009443; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YA3VmuPxJ2L3DtrIn8wKabMcttC/MOL2mTB3zxLU6Gg=;
        b=VyhcZ2MIR9gdB0DJ8B2Er4XDessjK9mAdVWCMpgdohUvEOMKMY818m389mKdpqS1Vh
         GV6le2WUF+iqMAa8O/qsWqQzDL3Q/xLvuV+hBWzLNl7gTfMQ80VVDnTGzc0DsaMEVO9o
         yPh5LhOv2xbbtA7Z1UMWYDRWvAL1mfsYbbJ1c7eGUkTPeg4dMbJXh6LcmyCfD3FS0kxE
         FvghV3rXE5RDm3btpD8li7MHMjsH9B0bqy5s+Ssoot5ScdmSyIsGZyIrx8KW6tb3nn69
         bnk0rSyNFENTS+VYhQm4B+TB/VTS6XwbyTTpWNTCNJrNXrQcPJf4IvCvejeR0E5Jq/G7
         Iqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404643; x=1769009443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YA3VmuPxJ2L3DtrIn8wKabMcttC/MOL2mTB3zxLU6Gg=;
        b=ohnTqRzCqqdH21taPfjD8lfPOBm/dszHIZ9TBvnOTcIqXbO+rrePKFvVQnGshTRojG
         FXVGj0yE1kwHlnwRKWTr9pumpIyV1uuOte5Tb/Ur7/140Db9oHggPzmEBpcYuffCWrpA
         VQjnXm+ihh1PBzAnxLU8PGkL4NGD4SCi+afFhEDrNOBZjTNI4SEDRh/pDhDifzpTFQtl
         duUUaJ+uIv7pNKgVSPoIo9QBPbA7flU4pZElom7zrpshw54Q/lzBmoKsjBSoKifp47Gm
         gZCyjRNn66umTivNDud9XHlVx1TqvyA29NaaApfq6t4zFInGHC5H500d3ZycUDA6fYft
         aePQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpW5gbPj3wQKdqR58/gxGzHeQTHZcDGNjLF2TedcGZAZ4eexIpVf4MGmeCLw3QrjrjWUN3MNAghD0ZN8/gBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXWDbwvQksF1ETuVIy33WPP31ZsRcPgd87m3CPZq+kv9kSbxao
	Ur0IKCByPxbfDpfvKcxZo5m5EBNSK6NItvnIOlfGn6Wz0C/d/kI0i9QdcI7FAnrB/Lov+KEKSvA
	NyXsA4mYcjMq3l56C2XenHegl9QgMJ9lD8s200HUmhreWUlZW+CsRwQrVg4PkqPx4VqhnvIJQXU
	s=
X-Gm-Gg: AY/fxX5cVUwKB+Sfl4eB/MapGcRPDfZGJh1/A5+6V5IRWFm/ZVR1hAaZMb6v15/Pbxn
	q/1fElk/lWQnD9bkU8FnnIgxNa0a8UgwoQ52P1kOY0RHqLNppUqQmOaNb6XRpAL+E65Mosju1Vk
	Faf4f54SHzXlSJLLpyVyoeFkbMHh3r4cghWz3JJnRVd0updEleMQhBIQlQNzF4vZiNEySvI5w4c
	ASmKh4xzqeSLIyDgcMRRQno17YCPHilpZyTotxEYTzoOiC2zV4OORdxbR29k4Y8o8R0SzKcBMT3
	7D5TIfB73mUzYzPQCsynVdzrLgQ+uYfbIT8m9h8ExIKxOS4wgURHn0oR2BIPRB/h1XSBFuyimAl
	q8APVtOk0mm/jGjFrN/ZVOc9lYRnHhAqOUw==
X-Received: by 2002:a05:620a:489:b0:8c5:305e:e9f1 with SMTP id af79cd13be357-8c5305eed0fmr269951185a.35.1768404642923;
        Wed, 14 Jan 2026 07:30:42 -0800 (PST)
X-Received: by 2002:a05:620a:489:b0:8c5:305e:e9f1 with SMTP id af79cd13be357-8c5305eed0fmr269941485a.35.1768404641970;
        Wed, 14 Jan 2026 07:30:41 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm22812989a12.29.2026.01.14.07.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:30:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 16:30:12 +0100
Subject: [PATCH 11/11] pinctrl: st: Annotate st_pinconf_dbg_show() as
 holding mutex
MIME-Version: 1.0
Message-Id: <20260114-pinctrl-cleanup-guard-v1-11-a14572685cd3@oss.qualcomm.com>
References: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
In-Reply-To: <20260114-pinctrl-cleanup-guard-v1-0-a14572685cd3@oss.qualcomm.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Hal Feng <hal.feng@starfivetech.com>,
        Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Basavaraj Natikar <Basavaraj.Natikar@amd.com>,
        Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sophgo@lists.linux.dev,
        linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1163;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=SjKuvqUidPJ5fm3b34nm9zaMItl1NLBQXfR5LWGDZIg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpZ7aJM3IeY1gDdJ/me5IBtT+aPwzcq14pNkWtM
 OPOQAst1h+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWe2iQAKCRDBN2bmhouD
 157+D/46tj+ZWnUE7RsMD2CztKOGVGuOYzCPiW602Pq4QhElA9PrVOh9VIyCLBB4SAqk59lZVYO
 MlOwyygoSEozBQN91oQ75iEXnJ2aFkB8b20ULI/EMUFnyX6NdIMSpVnIDtcXgX1RxtvmdcYlupv
 d08RjFjuwR7LM07n725h6qKS9ZYbGJXlWsH7hlmPWz9uaBnMvZzlvEiGRcxJvRoIWynscL9CB/e
 eFLs1++3wid48u19QEMpcRMV1MeZTv9QEZFnOFzKRAoK1CYtDEfXVYfNebfDK7IZVx8Zqe5vmF1
 thvHVTfdbWtXtejVJI80z4+iO3us+I+e5+NIqhB1sFl/hejmicbZHh7MTevMq6l7Dx61o72dT3b
 BhdNFYKwza+3RNldEDuAhvQRBjg2Osn6flZIO1CR3aOlo144cLI4IOzTKuAabhDB5TNFikqrvrL
 0xDWRzt5IGOfkrJc8g9H+D5W9i+gkNFuirIpoXQ5tVjSuxdX3YHfj3OMC8Y6n7eAVVx6cqYfgR6
 nkcpzSTEOenPtMlHZzvr6whjmpwnN8lLQtvA85ZpjgGBavOqUfo3Q+2StXsTFS59+ZZMsU481OL
 hkwcnNi21sXwyD/y/MMq0KvbGR+S3+SbDRux5b96048SW88pN3twiCfZ3TKPRiPTnwc8noN8qv/
 lE5bKl/wMPXzUNw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 6DzxEtUgyQ__BOq6cl1H07d6DGqveS-D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEzMCBTYWx0ZWRfX6upPx6iu+op/
 4pYIkzd/BabUievb9dVYBpJXMofnY602S7dGIyAX5X7FSKvZULJvnd9tzBMTJLjCIh1jt1IJx5H
 GBQJ+evjwfXiGwC58oMkNzXBeB9a17e8el6UdJLgooB/Avtd31WvKFXB2BS7xUBx9TTCZbOMIOU
 uReEVdCzbPqCwZXiBLk5T8XkmiUD4vbCCddqO9k2GTWGaiFZGZY099USj7MAPcl+w3n5i8i1qWZ
 VN6BlBP91oXxKme9lMmqLg5oqXWRqtnqIr6CZowoBKJX2he/1a6VXTUOqR67S2E8Urnu5ZScr9o
 0WwT5pVf2v6AfcIMBbgP3Ze1SqdC8ORNqxmekqIGfCFjC1kCiUKZX2uHuwQ6kpnQw2eXqaQYKEv
 j7+340T2aFmQf0/xWTpkajI59eAindIt4HQhNMZL3alIe/ko9nqbGkl7hkBWneBGabhDGHy1sC+
 IJE0O+5n61j608h3dpg==
X-Authority-Analysis: v=2.4 cv=W+w1lBWk c=1 sm=1 tr=0 ts=6967b6a3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RIxbnQC35JVfspY8PfAA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 6DzxEtUgyQ__BOq6cl1H07d6DGqveS-D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_073048_107868_B8AA1E65 
X-CRM114-Status: GOOD (  15.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

st_pinconf_dbg_show() unlocks and locks the pinctrl_dev mutex, so it
must be called by the pinctrl core with the mutex hold.  Annotate the
function with sparse __must_hold, so any changes in pinctrl locking will
be statically detected.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

I think this is still useful, although maybe a bit pointless if core
explicitly always locks every pin_config_dbg_show() call? Anyway,
pattern of unlock+lock feels to me like something worth annotating.

I left the patch at the end of the set so it can be nicely discarded.
---
 drivers/pinctrl/pinctrl-st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index d3cea3437d7f..8ce88e591f47 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -987,6 +987,7 @@ static int st_pinconf_get(struct pinctrl_dev *pctldev,
 
 static void st_pinconf_dbg_show(struct pinctrl_dev *pctldev,
 				   struct seq_file *s, unsigned pin_id)
+	__must_hold(&pctldev->mutex)
 {
 	struct st_pio_control *pc;
 	unsigned long config;

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
