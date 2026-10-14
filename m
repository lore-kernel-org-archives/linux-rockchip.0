Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 289B1CC6B1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YWJGNEszD5HR7sN8/HbmUCrDkUOzfn3ys1u3pfwExVY=; b=vW5gB7NVIsATTg
	sz0qgZsdl4ldsj45oncNojH6R0e6DVo2roTDIDWZ/ugbGOmXFbNNbnw0oxi7zv4TFWI2rXJVN6o5Z
	1EQzkm6p2tgOzzXGWJP4wRSo1JGVWvdT0v3MXjnmd20xo8dOg9/ctfiEXoMVgXyXnruot/OkZClpy
	o9T9tzapqlAICcWs66myUuRW0eCQmhJh0D6KtPIK0YRzBgyAUyWwMTYVpWjJXsevga8YAEIOEgAwJ
	t9B8rvu91bcXdhGX1F2MfS9GQ+xrfoVA7nKuPQiVpF3Ks2SGPEfZRvhmm8veVf2yyYxq2UAIJuUp6
	HqBNXFcpkj+RhcZe4Urw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyEI-0000000FRZc-0a8I;
	Wed, 14 Oct 2026 12:37:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGyEE-0000000FRWH-2pSG
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 12:37:08 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E9Qppu2222153
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EVpFNB3CilehugVbDMWv6b
	Xoo9vCpK+FUU09DpaShRU=; b=oEaAZpzQnRbW6odHN3Vc0Ke0cjE66Hax9LD3Qd
	77MOTgT2nx+LnmVlaDJNhBJLk27an0caCqtbIi1+j33OpqUoKTX5lYgkyDUJi8zb
	QvRpqwR197fXX30KKofHac1+bP4u/Ki1gMHSHOjIr+Lnj7JZsN8U43WHkgNFCIze
	WO1jSCbCQ+eWwP6X0uqohJlLMagM3itjEpyfgnZ8CrygJEh2vBQBIMrLO+ChmgoW
	K807Zdtd1Vfm+dvHodUlUUAO+Fo7xRk/8E6OiN8cfqfvl+CoqFl0FKhgCQMf7bH7
	qry7cn3jG9NxoHZscZjQ7pEclEu2AqhAp0ZFSKn4twS+AhiQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9txsbm42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 12:37:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e92aad34aso757616085a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 05:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791981425; x=1792586225; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EVpFNB3CilehugVbDMWv6bXoo9vCpK+FUU09DpaShRU=;
        b=V5qza0dseaTLUBxE33/tItKCr8fICJmfn29m2ZK2mzMApvBNbno4WymeGdj7+iiXYZ
         UNTP1iM68M0IHm7lTfEb3px5+/Ck1SkZCH7eejW3C6xQoWcaFEbK8qgxwYytwdSxzPfc
         nvwztIaKe+FZpZ6YmSr1vXsoHGVMBkiS43Dj+WZLQFFfVdumDD/oo3aqQPkh7UYpNn2G
         4U8AAeqdod/2e1jOnHT4+4CRgFLJlhn+d9SCA8+LO7fnlQmQxn+row0rzTPQ/Mbjgk7Z
         seSgg+URT8FnwKftwFJbnmQirqftVAtl0szsHC8fWfmQywMA2bI3iPYhboSfxdzk+/lf
         CJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791981425; x=1792586225;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=EVpFNB3CilehugVbDMWv6bXoo9vCpK+FUU09DpaShRU=;
        b=M/AzsqD2smrZzzfyopqu1UQdpWtA1o/PVCiC5nJDV+cot6kRDsHvMdTQHPXVEDFwaM
         IAGAMaPporFbwKNyxWmy5dfSwxsl5AQI/9s71T19m+S79q6EDEzsEr31MaE0snu5YOio
         lrB6gc1DvC+CPX/0P52bSfMYXv2P2r/5bDlX1/33PFwPymJekh3bKcfkWfEH+EV310LP
         SFLa1SDsb25NqFg9Jo/vgVB1ZATNl34xulr4TYPWpwB1zbTUrRDgozWtdZuKQTvcqQPk
         jvbgwuf9S5KcWfiHN8e5uKGoenvjXXhVahV70hisg15RO9vK3d2mzlgOG4vOYOZIOnvG
         3Y3g==
X-Forwarded-Encrypted: i=1; AKwUvBxqpyi6mytGl1x7xw0WGGmhFLz7jrgZtpV+tuWQadGO4is43dYiqnbAFI/piqcRttfKuEw8zJ9Ym2V3lN1++Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYLikRBGqtS7ZRMKF/AOJy6tMkWJRXoQU6gooFYncTW1i/0znivL
	HZvcZsqsaxRRkbp/ZrvYOErlgcnNWSv598UR+k1W7hiNzMRR4Iuu0bwWgShttM3IIeSz4xtY6+k
	CPulnehqyQZIDskqdZUVoXWKUhAIvpgMVEwfV9g/v8VsF1FkMju+leo8pcwS4vVrtj+2snK0FHD
	g=
X-Gm-Gg: AYBFou0X1C3Z5K49biNZali5z4IiMFwBtPfE/fIcDTE4cI+Ae9z69z5JpL3GZ6bHQAY
	yS3znH9zPow2zhrapusAmIutVebd90qCv9y0jcCdRBaWBmpxddyQvM+U9iw7FuMNnQdtshd2vDi
	MUawLL50dnJgsrtgC4OGCEmDFlIwVmXIntznfL0uT3WLJGKh+hSPudE8bqUSEhKCJ4UH7G/c6cP
	/lWiy2AY9FpuJAgE6f5/1aUN7aMQudcx1SPb2GZbsxoq85SUbNryy48eJJKOrA0rAwotG00PagD
	yhUfCJdYppKIzztrqinV/c5hJp6Dciep7S+57uZViZNQHQKtRWomCGJUA/kvekWXD07lbV9oqvV
	Sjh973tVt2Fje+Uck8PTdNQ9z3VaV
X-Received: by 2002:a05:620a:8389:b0:93b:d79a:c463 with SMTP id af79cd13be357-93ebd26b5e0mr2523456885a.59.1791981424743;
        Wed, 14 Oct 2026 05:37:04 -0700 (PDT)
X-Received: by 2002:a05:620a:8389:b0:93b:d79a:c463 with SMTP id af79cd13be357-93ebd26b5e0mr2523450185a.59.1791981424148;
        Wed, 14 Oct 2026 05:37:04 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a19f318c31sm206122615e9.3.2026.10.14.05.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 05:37:03 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH net-next v16 0/7] net: stmmac: qcom-ethqos: add support for
 SCMI power domains
Date: Wed, 14 Oct 2026 14:36:39 +0200
Message-Id: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFd3z2oC/3XTy26cMBQA0F+JWJfRfdi+dlb5j6oLG+wEKQMJT
 FGqaP69BqkFaewNEhgO9/ndLHEe4tI8P303c1yHZZjGfIPmx1PTvfnxNbZDnx80BKRBQLWf3XR
 tF29J6482Xn3XWmWAWPtOIzX5u485puFrR382Y7y1Y/y6Nb/yyduw3Kb5z/63Fffz3XUIBXfFF
 lomL65LGI2xL+/D6OfpMs2vO7fyfwKBpERwJkSLkeCIwYcHQh0EFrNbVSaSGGMArHTRPxD6TBS
 j0JkA7Dmy94ntYyLmIAhdiTCZUFYSgiVlML5My3L5/O3f86vXS75slc+AAUSqAdZ47lUg31t+B
 PZI5F8kBhhMCZIM9RkCZHAqSAWyJwixBNkMaUskIfcX0FYgd4aKEbkMddo6VlFMSlSBEE4ScXH
 iYJsXx0CB2Ho0NQoPylCxYbhNLwZJwemgMbkaRQcl5YrnhkKbZydg7BI5wBrFJwrLCW4LgeiSN
 c7FZGONUgflwBapbTFiR0hBlHjpa5Q+UZWybwsSLSVmIRAuzdT9fv8LafKE/q4EAAA=
X-Change-ID: 20250704-qcom-sa8255p-emac-8460235ac512
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Romain Gantois <romain.gantois@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Eric Dumazet <edumazet@kernel.org>, Radu Rendec <radu@rendec.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org, brgl@kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Sashiko <sashiko-bot@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7865;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=3JI92fChNel+xLl9nSTOo1s0KJ3h4nXbqoiyZakFteo=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz3dh44xUDWD4gypAZq0VHb6gBzU8G5BnVE4C1
 /e3UOQADJ+JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas93YQAKCRAFnS7L/zaE
 w1rgD/416+tDKuxenpypb4rL9y/Y7Z5Ro6iQ7GKyeMUxd7+uqf03H+7frSbWAU+kLIVZZu+e/ip
 cRvtQj+uBEjl9AsaFzDX7RWqgYB2KEaPMsbjzzKqrQYrH2+u3QZpx5F65j5a2HzopoCIBYupQJt
 4Pyxg0m5tTq6PSNVvB/tRKk6zDvwjPZ4KYOWJAEbRrPT0GfjMDbi7lvRwO3VEObjxoaOaToq1F3
 V5lN9MfgUfYDC6pX/YQjX1SJkKRmxOz0SgUQSgoN43OBN+lOkQdzAUnnq9usDPAw6RQW2vwbXEM
 huGteMONpZmYMVL6qz9N1eU9jEe0YR3Cqn+3gcnzhiPtzP71wSPBGC5HV4ysmdh+PHBPF++VpmU
 Zt2ejLLjwgbHEKR95etuZXzVbxE/1kEzIca31WpjmE5d/k+yu87SVXtx2r51nITrCIdAjTZsTHt
 62dsa4AuNlmZwdZrqxIEgA7IOlCMTPB2Br50JxL3g/dmH2EjYojeG8GikqKPai2PZlVAUN5fESr
 L+z8y9d0yOjcbPuTvs3i7MUEMlQwOZCrrvl9HYPrQi34U3Zhas2dOuDHPMi5tAemeY3QZWJS7zs
 IkUWljHunYnwT2K1vMKSNQT9DE8eNscl2KdUZnQjQNrTvrS5LRRFTx6O3/2m8Ne01oUxca5Zin9
 yxencD94IX2Gsjg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfXxI6tQCUbr0Nt
 nRccCYcW6ZeiORGNNhlT/k9ZarbrnPh/0FUucFvpOJpwmhSBOzpvrwvcOFttVorl/RfetyqAx9c
 /awe6fbM4mPWINd2s1kph7npwtNzMpRSnBF3TmUl1yINHsdnFeqBk/UKCYE4G9PNJd9220dD6K9
 wIKM8tLEx+OXBY6TNzslI/JOgO+WsGvw2UkA5l/Qu/S4K8wl8d45ceoC858NlSbg1gzieQdeZCk
 D/C0DCbM7Vb2j4CtF4oMjcFFRASgV06chdAkSWnzXpk9d0Ilqqnd8ckXNgwMq2+tM147MCDiFwB
 WUQbmUcO74E54OJsoRcwtU0ly95VzDqNESwb2GkYNP7XDuqPVWozvRg8MvLnTJytTwBKBVZhprs
 lhr1xWXObzhobEVFBr4370gK3mDjHTF3LM/rL3OoydN/2BG235GcfWQYFAA2j2a+Z3nj8MS1hIW
 sZTrWNgY97ZTM6Dwrhw==
X-Authority-Analysis: v=2.4 cv=LPPz05W9 c=1 sm=1 tr=0 ts=6acf7772 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=LD4EYYuP07UOpJRtIbAA:9 a=Wuut_rWLunZvJXiu:21 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA1MCBTYWx0ZWRfX9KmcrnJzI93O
 lrcCkP8K+p6fK1/9qvMWv5YSnBwjqh7obKTiIUD5agsB7W/Fh86A/N+hSzMX7R4UgIsr4ZdUoVL
 fJFwYJ/NGxpyUbZjLK565eEIsxdeWxg=
X-Proofpoint-ORIG-GUID: ZdyJCsaDJeSZVXhkTEGnv8XQvtbIgiDN
X-Proofpoint-GUID: ZdyJCsaDJeSZVXhkTEGnv8XQvtbIgiDN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_053706_746985_D935C848 
X-CRM114-Status: GOOD (  21.63  )
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

Add support for the firmware-managed variant of the DesignWare MAC on
the sa8255p platform. This series contains new DT bindings and driver
changes required to support the MAC in the STMMAC driver.

It also reorganizes the ethqos code quite a bit to make the introduction
of power domains into the driver a bit easier on the eye.

The DTS changes will go in separately.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v16:
- Split out the SerDes PHY patches into their own series
- only set the serdes mode for actual serdes PHY modes
- reject non-serdes PHY modes on SCMI variants
- extend some comments to unconfuse sashiko
- add a fix for an issue reported by sashiko where the tick counter would
  get reprogrammed even without the CSR clock
- Link to v15: https://patch.msgid.link/20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com

Changes in v15:
- Squash patches 6 and 7 to avoid a potential hang-on-resume regression
  (Sashiko)
- Fix the AUTONEG_DISABLE early return path in forced mode (Sashiko)
- Fix Kconfig dependencies on generic power domains (Sashiko)
- Set the performance level back to 0 on unbind in the PHY driver
  (Sashiko)
- Use devm_pm_runtime_enable() where applicable
- Link to v14: https://patch.msgid.link/20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com

Changes in v14:
- let genpd's own runtime suspend/resume callbacks own the perf state entirely
  by calling dev_pm_genpd_set_performance_state() in set_mode()
  unconditionally in the sgmii PHY driver
- drop usleep_range() from the PHY driver when setting the state as the level
  setting is already synchronous
- add missing power-domains limits for ma35d1/k3-dwmac
- fix ordering of clearing the sgmii loopback
- configure the wrapper clocks synchronously in scmi setup
- Link to v13: https://patch.msgid.link/20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com

Changes in v13:
- Reapply OPP on speed change in the PHY driver
- Use linux/device-id/of.h instead of mod_devicetable.h
- Fix the "invalid PTP clock rate" warning on sa8255p
- Add commits necessary to allow correct link speed change with SCMI
- Link to v12: https://patch.msgid.link/20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com

Changes in v12:
- Drop the power-domain-names from the SGMII PHY DT bindings
- Add missing Kconfig dependency on PM for the new SGMII PHY driver
- Link to v11: https://patch.msgid.link/20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com

Changes in v11:
- Take a new approach: add a dedicated driver for the firmware-managed
  SGMII PHY and simplify changes made to the MAC driver
- Link to v10: https://patch.msgid.link/20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com

Changes in v10:
- Fix unit address in DT example
- Link to v9: https://patch.msgid.link/20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com

Changes in v9:
- Rebase on top of current linux-next again
- Link to v8: https://patch.msgid.link/20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com

Changes in v8:
- Rebase on top of recent changes in linux-next which required an
  extensive rework
- Drop partial R-b tags
- Link to v7: https://patch.msgid.link/20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com

Changes in v7:
- Restored the correct authorship after learning git uses .mailmap for
  the --author switch
- Rebased on top of changes from Russell
- Fixed resource management issues in error paths
- Link to v6: https://lore.kernel.org/r/20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com

Changes in v6:
- Fix $id value in the bindings
- Drop patch 3/8 from the series
- Update init/exit callback signatures
- Link to v5: https://lore.kernel.org/r/20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org
- Link to v6: https://lore.kernel.org/r/20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com

Changes in v5:
- Name the DT binding document after the new compatbile
- Add missing space
- Make the power-domains limits stricter
- Link to v4: https://lore.kernel.org/r/20251104-qcom-sa8255p-emac-v4-0-f76660087cea@linaro.org

Changes in v4:
- Remove the phys property from the SCMI bindings
- Mark the power-domain-names property as required
- Set maxItems for power-domains to 1 for all existing bindings to
  maintain the current requirements after modifying the value in the
  top-level document
- Link to v3: https://lore.kernel.org/r/20251027-qcom-sa8255p-emac-v3-0-75767b9230ab@linaro.org

Changes in v3:
- Drop 'power' and 'perf' prefixes from power domain names
- Rebase on top of Russell's changes to dwmac
- Rebase on top of even more changes from Russell that are not yet
  in next (E1vB6ld-0000000BIPy-2Qi4@rmk-PC.armlinux.org.uk)
- Link to v2: https://lore.kernel.org/all/20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org/

Changes in v2:
- Fix the power-domains property in DT bindings
- Rework the DT bindings example
- Drop the DTS patch, it will go upstream separately
- Link to v1: https://lore.kernel.org/r/20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org

---
Bartosz Golaszewski (7):
      net: stmmac: dwmac4: don't program the 1us tick counter without a CSR clock
      dt-bindings: net: qcom: document the ethqos device for SCMI-based systems
      net: stmmac: qcom-ethqos: set serdes mode before powerup
      net: stmmac: qcom-ethqos: update phy_mode to the resolved interface in mac_finish()
      net: stmmac: qcom-ethqos: reuse the address of ethqos_emac_driver_data
      net: stmmac: qcom-ethqos: factor out linux-level setup into a separate function
      net: stmmac: qcom-ethqos: add support for sa8255p

 .../bindings/net/allwinner,sun7i-a20-gmac.yaml     |   3 +
 .../bindings/net/altr,socfpga-stmmac.yaml          |   3 +
 .../bindings/net/amlogic,meson-dwmac.yaml          |   3 +
 .../devicetree/bindings/net/eswin,eic7700-eth.yaml |   3 +
 .../devicetree/bindings/net/intel,dwmac-plat.yaml  |   3 +
 .../bindings/net/loongson,ls1b-gmac.yaml           |   3 +
 .../bindings/net/loongson,ls1c-emac.yaml           |   3 +
 .../bindings/net/nuvoton,ma35d1-dwmac.yaml         |   3 +
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml     |   3 +
 .../devicetree/bindings/net/nxp,lpc1850-dwmac.yaml |   3 +
 .../devicetree/bindings/net/nxp,s32-dwmac.yaml     |   3 +
 .../devicetree/bindings/net/qcom,ethqos.yaml       |   3 +
 .../bindings/net/qcom,sa8255p-ethqos.yaml          | 107 +++++++++
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml |   3 +
 .../bindings/net/renesas,rzv2h-gbeth.yaml          |   3 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |   3 +
 .../devicetree/bindings/net/snps,dwmac.yaml        |   5 +-
 .../bindings/net/sophgo,cv1800b-dwmac.yaml         |   3 +
 .../bindings/net/sophgo,sg2044-dwmac.yaml          |   3 +
 .../devicetree/bindings/net/spacemit,k3-dwmac.yaml |   3 +
 .../bindings/net/starfive,jh7110-dwmac.yaml        |   3 +
 .../devicetree/bindings/net/stm32-dwmac.yaml       |   3 +
 .../devicetree/bindings/net/tesla,fsd-ethqos.yaml  |   3 +
 .../devicetree/bindings/net/thead,th1520-gmac.yaml |   3 +
 .../bindings/net/toshiba,visconti-dwmac.yaml       |   3 +
 MAINTAINERS                                        |   1 +
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 265 +++++++++++++++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   9 +-
 28 files changed, 402 insertions(+), 54 deletions(-)
---
base-commit: 07d73541fde12a6c05f230509142a66e6c8751eb
change-id: 20250704-qcom-sa8255p-emac-8460235ac512

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
