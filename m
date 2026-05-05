Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E7FCD3436
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 10:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YYnTGLMUJSJ7woh574VMf3bYeRDYEuvOI6/GSo/JjU0=; b=agr7bUSCrljFUH
	SKPo768UBfVXhZbYkBBGNr0fKLWOwqt/7pdJA5hCOBxQPmub4tatCFOCqI3XhH8A+4yNxC/yXGPOR
	pyBTwQh7dmwW9md+NJc4ptlcYGSGiwsNNKdLG5m1ZCjL/PrZSVO184nmrajfJWoBYkXDuKsuv5V05
	wZDaZWJWdiYhdtkwuCuwrLnaHkgJA0D/hA7WvSlD610FW54EU/XZDXedZmsffd7eUwn43zixgSNWm
	x+J1Jw1i0AUyS79sCoqagUETzw4+jZGXZW1n6bAwT1j0OHtjPv4Axd6nWIqZhMrT9hmEzNQXr7M/b
	IonPamstcvdd3Z1VosnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKD0s-0000000FtDd-1uxx;
	Tue, 05 May 2026 10:28:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKD0q-0000000FtCM-1iSe
	for linux-rockchip@bombadil.infradead.org;
	Tue, 05 May 2026 10:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=U5kZwARyzl50XHwnIIgnTM4EUs3/eZVvYSCUYEqXM1o=; b=CYk6XWtCCq0bfCSxWE04gj8jMp
	Ueyj+y10/M4e5jRwgyZZgEbFhC4hwjKi6Q7lXeGw11Lh79tQZrN9LD88meWvkaaaXcPtjEpIhF7Pc
	VzOmqUddfxvsrOm7fQg8hoG6op53keNiFpSq2mue0tYhOtykQ8Gf0h3cJ4ZBmlxvO1+F5pOODt/3a
	fp9RSuFx2rE0LEEUhaLwnnCkclNcn0kY+exnHqpvuA/dx90LbnnSJ6B1d0k/ic6Q4I/UJM6IIHDgz
	rDb6x7cT45sKqVAd1oAh2czWrT2XhBiPuuvzuYQ2R7YZJF6m+ngRI0kOHnvbGgzjoeHCAXlXhUtZI
	xPF72ROQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKD0m-0000000DCDT-2PBC
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 10:28:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6459VSQQ2859207
	for <linux-rockchip@lists.infradead.org>; Tue, 5 May 2026 10:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=U5kZwARyzl50XHwnIIgnTM4EUs3/eZVvYSC
	UYEqXM1o=; b=bNvpU9mvouLG/7dPG9Ma7uCaJFIPu/2iXuOdUgE9938x9791Y81
	Du5g4RPzNfZ3Wkg2ReINzGoTrhSFh9HGPEMZmrjC47mxJsjN4d1pgWIG3jFTfxpc
	0aA5UBk639Muu/pzr89RfUX4jeHtcnuUJGVVP4Ko2ALRJjKEeL/WsiKZMr83X2AM
	1H68bNoYHl4twkt4xCQUv3DX32dCBJ3J8WGrhuK4uhAtMH3m21eHA2pb43NXiGis
	sGQ/E+BnopElT/e2PJrfpK7gzC/Lc8bm3Yy16HfzEn+nrGN02WBWUt4iPC+E/l6c
	EigN3JXycdkUML1kMAucJwtyVCMne9WPkbQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dye0ag81r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 10:28:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50fbc49bef6so91311811cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 03:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777976896; x=1778581696; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U5kZwARyzl50XHwnIIgnTM4EUs3/eZVvYSCUYEqXM1o=;
        b=VV/VKd5MeBlu4cLng3tXVXsA9wxcVrApfGaZlRCfKkIwTzWW+Ne3ZP+DNXkaGB6rQC
         2FYjW7zMRGbLNa8i06B6cmdIp6cALQ5booQGSOuVmw1s20RoUUCFaZQu2vpNZbLOs8MV
         8G4keXvHO7Vx7K8618h+ok6HADiOCrxifb8GAT1oVZ6AbPhQdiiAgYkGUq0tMHU4ZCof
         Jp5I2aKrh4Hv35OxK6A6eV+aRs0zl0KfnjcqzmERUqTJG2FiVodf+pt45224kkSSDivA
         xuocGSu4VZyfEtA14n3ofUWUGDGot1hjeQq58UTGjtCtF+HBaNenGcyFI4gdfxj2UHBZ
         gjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777976896; x=1778581696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5kZwARyzl50XHwnIIgnTM4EUs3/eZVvYSCUYEqXM1o=;
        b=YFwQAwo1iZAvkStO0K8tmmpza2Zg0AGnqOrd6mK0e34/izjrRSQ8dthtlpI1cNnANT
         xdJQg4/A0vCubSBwh/CLF+6gT+hUPVmUf33MVjUjEb6wGinDZG+n5Kj397ZqPF27RLO8
         WYlF0eAJ7MEW3LKiOXJD1Ea6LR2/rjIWIqj7QuYuGsWOi5eU2nerB22bvoBVnEX6vHEL
         5QEyI+qguIbJ25IF33kNsMA/yuSeK3NkQIqD4FKCn6OK0m+0QMVJdE11HFY6I7z3a5xD
         1aHkQZEizyHUCWs9ICCsK6PJe1CfZhwKyTgO5nceDyAF7cIKfsQK2bpPhkUanO+3azYQ
         +y7Q==
X-Forwarded-Encrypted: i=1; AFNElJ8AK0QXDNTuPfnEzzKeoIf0X6uDpkovFERojEAZGxkNJMQeVhRO7crLbekEs6p2iPtLkLHblifd5YfwuBqUPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBpM+Oo8aENjI2h89u5z9r49mDnQ5pvzCF3wARTHVFVdfRuPc/
	d3n+KUGrEALdM4ObH7PWCIFTsNqKpo3joRbyr7/tsKY9ugMXq2EmoZmxHFNeZX3ruQi/0x4ty+6
	U5GAbDPZbk7O03juIrY82QXVmp8dnXi1tFjgKg01Qud76SQTrfg4ikE6a2uS3R1BXAInWrC3Bsb
	U=
X-Gm-Gg: AeBDiesqw600fwMVOkwlgmrb/FYRhqnn1KOPPwJSA47AKSX4qjBrevrMGuh9Mftbx8O
	WseBPmhmbw481A4LC2CGrweUuXNRvOk4iNPd7LnAXvIOIbbkGJ11hnHr8DT5UkblQJH09+yZTKj
	4lXUqVaKLGrhvoe6SQZAwyKGE7SjyBdI2aKHbIL1Aul4k2wv86/H8AnGaFZ/zjP5UPCIxCfkoDR
	gsfvEZfI4ZnJsbgfEkxkTvPizsZcPQhX3Crl22L2yTEUInZ3TcQIRCkIBIk5z2s7OEjzkd+c3p1
	vfD450BU39b4FLD9RK2SDRBH+0SPlvuSbe+49k0T53AFagRh1sTrzB/oUy78z5R99O6m0C+3yi3
	bY7FLAq+I1Pd777DqRO+9odcQHhTAkiIf17Wim+nieXUQp+s=
X-Received: by 2002:a05:622a:2304:b0:50b:86f5:8fbc with SMTP id d75a77b69052e-5104c034745mr195430701cf.51.1777976896075;
        Tue, 05 May 2026 03:28:16 -0700 (PDT)
X-Received: by 2002:a05:622a:2304:b0:50b:86f5:8fbc with SMTP id d75a77b69052e-5104c034745mr195430191cf.51.1777976895389;
        Tue, 05 May 2026 03:28:15 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48af0d5a613sm140661845e9.2.2026.05.05.03.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 03:28:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Thierry Reding <thierry.reding@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>, linux-sound@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] ASoC: tegra: Move MODULE_DEVICE_TABLE next to the table itself
Date: Tue,  5 May 2026 12:28:04 +0200
Message-ID: <20260505102803.183455-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4190; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=XVPD+W616R8y/3NolQ5AG12OfNJrpdVU9osOz5k7zUo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBp+cYzGhX9vBzZinmPzQmxC1YRTCLeIfGMsAgSQ
 CuPZALwv+CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCafnGMwAKCRDBN2bmhouD
 1yB6D/sG86we9BBj1y7ZakpR857UpaCg961KT4yS8rXNLZX8PwEQXk1kmGhbypYl5BwQLlQo/Nd
 xoKUC/YSn80w71teMhyUrBS8rCS4kZiQFg5+G9pnBwL13hf5YaOhUYecI9MZ7b57uAOl0LnMJLs
 NyxFCmCvy+kTl7UpLdBQ3JG4brPkyHR8tQWagBP2/mGabQa4KJLVNRBAmX6xbVbFBY7ZGX9R661
 qBJQxTlJHJ/QoFydP/OznA/LVedghRIwfqpdgpDNR3du+f9QhtxCMaW4R4ymNcuaH52P8i+cI5Q
 eXit2jRzGBujRnlIyuiuvaEMBtIH7Uw8i+EQVXIfKSDk9DAm/zNixUG3sJlmHtNDtd1rS08d2zX
 KEgKpyhq9s+7TJHW12o2uhBoX3FsIsweIB1fxg7JCY26o4+h8GGMacRCgCUti7pQnGCEaW3vOx1
 aksHBOQDd5PyVz4he02viSTqsh+o/bYXUZx/UsLqOeMg9gGPK04AMV/8peJQvzH9r2e+wIn9fLP
 7i2aaawOY8edXRtDDN6HOIvS02iuRfrGwvil99v7wBKtSZ3wr59gM/Yldzv1PDUveEbthbW9NCf
 OUk3j4NAHxAnEyMNnLvxq/OaZOQyPKzFKMjEAyvOUovISkjAM9UTJZqrgqqMubD4Z+pusUCb4EY mq1MJkn0mN96ntA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDA5NyBTYWx0ZWRfX+1pf6kzWjNQ9
 Y/YC+YpfOwdmSQtkAYG5K4gqZ/CdtqpSM2s+L1628zQl0GNRHdygEk8Hd6VViDobEd0tDSoh7OB
 bPORVIacOex2fG4ldTR7mKiiB/EIE4ZJQhENHzG4QRPpG5RByWK1MY+N8kKO6Y1K89AIle+AFfL
 q+E9qDfbisK+Il/IYNWD2LGoyCPvXOZ9tqG6KGUrx8fa+Gtm72OyN66IvyqP5FeJ9Yj/Hb+ebI/
 5HBbBKt6jJTFOLW/vb9JouGQfPD3jUqDc+k+u0zwKFFesezJ3P6QQSx1KoLtXk4qWWMM7MvVU1O
 v+if9NHYBGVvViZx4zLdh90UFnWIi3LSGEb9Akow/uF8yl3jUnlaldhYWBUNFhMODSDxK7HCW7b
 nL6lAMn87O5YDO8+3dPyM9MUll/wMaGweOxUGVghKd+QXhD2n2qKQPl8N/SJ/OHuMm4EgidSobQ
 MdPk5rnWe9RjUamtTag==
X-Authority-Analysis: v=2.4 cv=Wtkb99fv c=1 sm=1 tr=0 ts=69f9c640 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=Ikd4Dj_1AAAA:8 a=jFLt6X_-GGHsf4P6n_8A:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: KNSAwlZsTD8Letq3Zwh31EnX01954HYD
X-Proofpoint-ORIG-GUID: KNSAwlZsTD8Letq3Zwh31EnX01954HYD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605050097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_112820_896568_43E195B3 
X-CRM114-Status: GOOD (  16.60  )
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

By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
exports, because this is easier to read and verify.  It also makes more
sense since #ifdef for ACPI or OF could hide both of them.

Most of the privers already have this correctly placed, so adjust
the missing ones.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 sound/soc/tegra/tegra20_ac97.c | 2 +-
 sound/soc/tegra/tegra20_das.c  | 2 +-
 sound/soc/tegra/tegra20_i2s.c  | 2 +-
 sound/soc/tegra/tegra30_ahub.c | 2 +-
 sound/soc/tegra/tegra30_i2s.c  | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/tegra/tegra20_ac97.c b/sound/soc/tegra/tegra20_ac97.c
index 08c58e8f3c22..0df1fc64f532 100644
--- a/sound/soc/tegra/tegra20_ac97.c
+++ b/sound/soc/tegra/tegra20_ac97.c
@@ -441,6 +441,7 @@ static const struct of_device_id tegra20_ac97_of_match[] = {
 	{ .compatible = "nvidia,tegra20-ac97", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, tegra20_ac97_of_match);
 
 static struct platform_driver tegra20_ac97_driver = {
 	.driver = {
@@ -456,4 +457,3 @@ MODULE_AUTHOR("Lucas Stach");
 MODULE_DESCRIPTION("Tegra20 AC97 ASoC driver");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:" DRV_NAME);
-MODULE_DEVICE_TABLE(of, tegra20_ac97_of_match);
diff --git a/sound/soc/tegra/tegra20_das.c b/sound/soc/tegra/tegra20_das.c
index c620ab0c601f..b48cc4a6967b 100644
--- a/sound/soc/tegra/tegra20_das.c
+++ b/sound/soc/tegra/tegra20_das.c
@@ -188,6 +188,7 @@ static const struct of_device_id tegra20_das_of_match[] = {
 	{ .compatible = "nvidia,tegra20-das", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, tegra20_das_of_match);
 
 static struct platform_driver tegra20_das_driver = {
 	.probe = tegra20_das_probe,
@@ -202,4 +203,3 @@ MODULE_AUTHOR("Stephen Warren <swarren@nvidia.com>");
 MODULE_DESCRIPTION("Tegra20 DAS driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" DRV_NAME);
-MODULE_DEVICE_TABLE(of, tegra20_das_of_match);
diff --git a/sound/soc/tegra/tegra20_i2s.c b/sound/soc/tegra/tegra20_i2s.c
index 51df0835ce3e..d9ab210ad69a 100644
--- a/sound/soc/tegra/tegra20_i2s.c
+++ b/sound/soc/tegra/tegra20_i2s.c
@@ -485,6 +485,7 @@ static const struct of_device_id tegra20_i2s_of_match[] = {
 	{ .compatible = "nvidia,tegra20-i2s", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, tegra20_i2s_of_match);
 
 static const struct dev_pm_ops tegra20_i2s_pm_ops = {
 	RUNTIME_PM_OPS(tegra20_i2s_runtime_suspend,
@@ -507,4 +508,3 @@ MODULE_AUTHOR("Stephen Warren <swarren@nvidia.com>");
 MODULE_DESCRIPTION("Tegra20 I2S ASoC driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" DRV_NAME);
-MODULE_DEVICE_TABLE(of, tegra20_i2s_of_match);
diff --git a/sound/soc/tegra/tegra30_ahub.c b/sound/soc/tegra/tegra30_ahub.c
index 51e5ab6c276b..ee68f28852c4 100644
--- a/sound/soc/tegra/tegra30_ahub.c
+++ b/sound/soc/tegra/tegra30_ahub.c
@@ -509,6 +509,7 @@ static const struct of_device_id tegra30_ahub_of_match[] = {
 	{ .compatible = "nvidia,tegra30-ahub",  .data = &soc_data_tegra30 },
 	{},
 };
+MODULE_DEVICE_TABLE(of, tegra30_ahub_of_match);
 
 static int tegra30_ahub_probe(struct platform_device *pdev)
 {
@@ -684,4 +685,3 @@ MODULE_AUTHOR("Stephen Warren <swarren@nvidia.com>");
 MODULE_DESCRIPTION("Tegra30 AHUB driver");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:" DRV_NAME);
-MODULE_DEVICE_TABLE(of, tegra30_ahub_of_match);
diff --git a/sound/soc/tegra/tegra30_i2s.c b/sound/soc/tegra/tegra30_i2s.c
index b121af9ef8ed..1d7b3aed51fd 100644
--- a/sound/soc/tegra/tegra30_i2s.c
+++ b/sound/soc/tegra/tegra30_i2s.c
@@ -402,6 +402,7 @@ static const struct of_device_id tegra30_i2s_of_match[] = {
 	{ .compatible = "nvidia,tegra30-i2s", .data = &tegra30_i2s_config },
 	{},
 };
+MODULE_DEVICE_TABLE(of, tegra30_i2s_of_match);
 
 static int tegra30_i2s_platform_probe(struct platform_device *pdev)
 {
@@ -567,4 +568,3 @@ MODULE_AUTHOR("Stephen Warren <swarren@nvidia.com>");
 MODULE_DESCRIPTION("Tegra30 I2S ASoC driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" DRV_NAME);
-MODULE_DEVICE_TABLE(of, tegra30_i2s_of_match);
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
