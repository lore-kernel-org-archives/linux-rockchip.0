Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0075F46100
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 13:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZKnUAmNQdsql+/EW89hdWyAM+UK8XZ+ALsk5ESr39gI=; b=pXDZczHVmlEgaS
	KduflySzs3Hb8FcQnifcEZyZCYMjHpQgwmXq/NBDX61/zM5YxZ7hLTOaqUgDDtRyE3+5w7gi4x4Gi
	SSJliJiw1/rwWpQ0pfQFOb6cbZsWvG3Te8eBpOxsg6pagPpctBrhU+/k5yWTGBMcQeDLgqSTHQwDb
	kiUjwauJwc0S9X6hgP8YPAYs0SiWWRNPNEXefw4Z4Cog8LYxDHTb8WnXKEKX36WCa36EZSyHgm7Dz
	qOzU49sc1bA3u13bS0qp90z21ZyLo2KpgXoO6TeKcxZdIjlz3nDZKRdm2vKahUCa8jKOFOFqVyDE+
	c0yh/yvJrRmIUh2rn6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fDj-0000000Gmgd-2RCR;
	Mon, 23 Mar 2026 13:21:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fDe-0000000GmdG-3X41
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 13:21:25 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NBgIE9123190
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 13:21:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vI/1k+nqYj3LM3ZnQClELF
	8nYZoxxBvQftKyxpY1xZs=; b=o0bGsK2slcntOm/N0wLXwMkCP7ZYcVI1Y46NYs
	zz1sziraJPBbRx+EWkgCeop3Oixt4aIp8ccE3ZOfx5BquubnaZng/A/otlog5jJ6
	z4gzQP5OjYF/qCZ/ZO0xeVZeoltm4BPfOvYolTrg4Mc5i4NBdu84EZ1nD9s0G/po
	WGJy1g6aNmfFOCXQ3MidKW5kAck1o/DPksVHHkbxIj9DEo8MJ8EWRDpyXPbWuXgZ
	dV9tNn5JTvizT6M+ygi7N1biHlD0cvbDSrTb+nW2SVjzQC0T/Q0AhMDh5xwEjH4q
	3wu5YQpkSqNvTkenDT1cIwGyh8gm0wyXxI9GPna7KFsx2Kqw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d34vkra89-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 13:21:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b469e5543so1474431cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 06:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774272081; x=1774876881; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vI/1k+nqYj3LM3ZnQClELF8nYZoxxBvQftKyxpY1xZs=;
        b=AIgJl66FJYT1MqPbgZfFQRHN7LU2qtNquxYidSb4THeZPeGr7kUyE34/3e9JL+G5ku
         nhnY4LoktrMTbD4JmLDDQNfL3tDe0+DA29tG8lui0MZdVX8xmr0AJRUC++ud4KLc6vEg
         pI3+uxxlrwW5+QtkkcDi98KP8E+MKkqzwkJisw8J163H7/c28dqE6vDwqlJHYQFIN/VU
         pZnCgqBm0lWWe74hFc0KPorPkTR66nix9bB280OuArdNDDRgO0uehHI8c7qINhkgWi/V
         374Mhx6U1vdGMFbFRaSbArqJMPMmAwoGNqbGgL1M50MepONQ+70o8eE7tmsz+0Xfn5VP
         /TMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774272081; x=1774876881;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vI/1k+nqYj3LM3ZnQClELF8nYZoxxBvQftKyxpY1xZs=;
        b=o5umMYhzw2JznCD0p7F6OwYe4dgMUI96ClR7PIm9aRUMDIOdn21T31UfFdK0yfKK6x
         sJJUZLYguk0R1eJMh6WbREJopamIZC9BEIR/P2RwI611BlmKACaJUE0wZCgBfz4Zczl0
         WLWEwK6lNc4RINGX4ds4KTPHQyHcrKvKT1rvQDstRyo97YpLV1boSq6hvsfmvrX33wdO
         iT281KScrHC9+a8EQyUi6sW34fLln32pIzPTcC7KtsTYPy2KSBc66VUfkEr90M+iSiUE
         dY5ez81YdLOGKQWHSZvi74ZveW8aPf+adZqRF/GgUpseMVatYbI9S279wuyzN+Iwcu8H
         XKWg==
X-Forwarded-Encrypted: i=1; AJvYcCWivrQU+rg27yaTw7t/o0UPAqeiaWs+S3Mu6HCmh8/kcppxziO4CsneAcdUUHbO08Xn5RvwaBTud0wURw08Xg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkUoy29vzkKiX5gn8ocAJwwNOaja7MVMXvmkzKBnCfAas1g3u2
	8eITRwvZZsPmZTrk+3gqpSOLiHlK/U8t5fSChuHmzUBOlsPMOpSmYcSidDjDuFhhV0W4uiBssZQ
	G99/yCyKdlXBp4YoUJ4o4Wvowut5XDWqk8t3DWhj/daWUwxv11HP0FyzIOp0iJq3F/uoNwC7Vm1
	g=
X-Gm-Gg: ATEYQzxsFURES7w8X0fCrX34E8C0WcU9zIY4SrDfh5EbCkVtmEwBUSsdANVKTrXHRje
	+mIqNVVRvIjoh72sqJbCqbZATgJOffOBMsS0oR7EoRYqqBs3Xgbjdk8v9wXMqrhcdB3uyABFn6e
	+WvJ5ypX5zrb+5VZjeoN/L/LS437mMMqmtTY/FwvIGOqi3V0frLD3RY6CgIMO09V8LNhgVhHkRb
	C4y2c8Fqx6snHtf8jWSFkND31/zTaF22m/8OrMalGu3vQFaVEm9K9QyjXA6UOAixS0W7ZHkFC6I
	KV43fsVMxSOPuaQTQKx1AkW90b5/lp/W6OBF+esiDzEtpYHcHdEtXqhw83sWmkbQA9rZazxzHbJ
	EDW5H4Oc/6dvmvTThNxVksd8aCc1gwmAVRNHh0Y+glF1yC/LC1tkF
X-Received: by 2002:ac8:5f89:0:b0:50b:51a0:f752 with SMTP id d75a77b69052e-50b51a0fd0fmr92226451cf.15.1774272080753;
        Mon, 23 Mar 2026 06:21:20 -0700 (PDT)
X-Received: by 2002:ac8:5f89:0:b0:50b:51a0:f752 with SMTP id d75a77b69052e-50b51a0fd0fmr92225671cf.15.1774272079938;
        Mon, 23 Mar 2026 06:21:19 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:f9a0:d7e2:7eb6:79b5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9832f44034sm503102066b.4.2026.03.23.06.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 06:21:18 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH net-next v10 0/6] net: stmmac: qcom-ethqos: add support for
 SCMI power domains
Date: Mon, 23 Mar 2026 14:20:52 +0100
Message-Id: <20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADQ+wWkC/3XRUW/CIBAH8K9ieB7m7oAD9uT3WPZAW6pNtNXWN
 S7G775bk00T8YUEDn78D65qymOXJ/W+uqoxz93UDb1MEN5Wqt6lfpt118iCIiAHHqw+1cNBTym
 Qc0edD6nWwTKQcal2SErOHcfcdpcF/VB9Pus+X87qUyq7bjoP4/dy24xLfXEjQsGdUYM2lHysW
 8zMYbPv+jQO62HcLtxs/gkE8iXCCOGdZ19FMpCqJ8LeCSx2N1shWs/MAMHXOT0R7pEopnBCADY
 mm5RaE54b4TtBGEsEC2GDbxECWca8GaZpffpKe9l6WMvw+/ICMCDSKyBwMo2tKDXBPANLEv+Xh
 MEAlyAvUCMQoIFoK/8CCg8QYgkKArlA5Cv5X8DwAoqPUDFRFKh2IRqbPbctFaDb7fYD3QgOBew
 CAAA=
X-Change-ID: 20250704-qcom-sa8255p-emac-8460235ac512
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
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
        Radu Rendec <rrendec@redhat.com>
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
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5284;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=62lf3t5qbOxIlaStdMXwEVkxERzacKVDrC+KBhgqa5o=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpwT5BAapgeuAII/igpPc8Q5Z/zNn8yHLPz/tCp
 ZAp3W8wW5mJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCacE+QQAKCRAFnS7L/zaE
 w3gsD/9/Dl9xaxiheSRVvYWnqhrPFyNVSpiwZG147FCytvuP+CGThjen3fCnLawlczMGnJizvlZ
 mo1gpTDVRhQZqja8nokWyHnkTRxnlTkYUkLXv5MK2Cp7Ly4Un3lG6k7yl6TI+AiR0tzQT37Rsma
 GqjgSPhb7TfibiBDaAKI5F8VK2iVULENWwTfSaCKyxcX/02JtJrZbdUm9VG6dKa5XOANEVfW7mu
 bJTUdUhk1LDZCjlN/1AROvTL2NQ/ENEWcXXAC8Q8HP/WlJ9qUc/zJ/UceVH1MtCBN0yedHhyNMq
 9Sdqx0XjJZnYNIrb7/wu2qNkGqn4M1KcHDfL/dL3euFCifPN8WjioVSI706yZqrf0idjVy2QHLz
 Tk5glZhJfciJIXTd6z7kUzAAUpMXD39PoG/T4vY4PRaMVr5ZF+sosTPQ0jSPRl/FnlSegyvY53M
 gKdnvwsUdBpxhtwTnOnuEUyy8oCEBgMKH77qJs6AEn1q/ZBFgytSInpjVoyMnYKVhffktwR69e+
 pJw8b3fJBTvwuGmtHexhhUwWCpZXee7Aw/JX6cW7JBF5IU2GdiaUfaIzdVVW6aZ/ssNZbPqRi6u
 XKDxVqIPAbTcoQ1Ym8FwqMNB30UMt1xKZeMqBb3PbnkJSpWgwhdwzn0BftA4j0xVai9SqgK9PCj
 3r3JMxXjRxZ0ymA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDEwMyBTYWx0ZWRfX+zvCMxASM5sP
 FI2wkIIFEO0W9Fk7NMSAXdrt4ePOMeKOuQU6M/AhnJ04+S7EQ2RIeooZ9CCrFlGucXlPjJuMpui
 RtpvBSxuAW936SxAD56OOfi4VWjRxX2aBRx72MZPuc7Vw4TilznuQYdLISkIcpKAfw6e7PdiNrz
 1L+RPvfDN4p7UEBbawaqS2MYhePS94Wf3ZPShhLwbtFOHClodEqXxClm6EnEV3Kl1VqmBgXpX+q
 dblyLbB7FAgfxkHxCIr4wgBoIeRM7dltB+zDxs/OCdWMPgKutvAoKTAZPXtZ9g1w2fR4ngREyvO
 0jjNJ/B4EztACej0x+db5CwFjNDcdUxrVpRTbndmaLTz6XyZEX7iNfhGlak1TyzYV6ESuNswIfb
 PsCB7PHUVmrdf7My6jyjeXTtNBs2vRmg0jGM87Z/Whxwmic9LMxxT2N/QVI44fHg3oVuag0/Fxe
 EcNZORv57D/mVTmQq+A==
X-Authority-Analysis: v=2.4 cv=eMoeTXp1 c=1 sm=1 tr=0 ts=69c13e51 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=11IwEMuB_qlnYAimh1cA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-GUID: vTft5TFGVsJRYr1JtzmfkeIgUlUmjB0u
X-Proofpoint-ORIG-GUID: vTft5TFGVsJRYr1JtzmfkeIgUlUmjB0u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_04,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_062123_038074_12958162 
X-CRM114-Status: GOOD (  18.31  )
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
Bartosz Golaszewski (6):
      dt-bindings: net: qcom: document the ethqos device for SCMI-based systems
      net: stmmac: qcom-ethqos: use generic device properties
      net: stmmac: qcom-ethqos: wrap emac driver data in additional structure
      net: stmmac: qcom-ethqos: split power management fields into a separate structure
      net: stmmac: qcom-ethqos: split power management context into a separate struct
      net: stmmac: qcom-ethqos: add support for sa8255p

 .../bindings/net/allwinner,sun7i-a20-gmac.yaml     |   3 +
 .../bindings/net/altr,socfpga-stmmac.yaml          |   3 +
 .../bindings/net/amlogic,meson-dwmac.yaml          |   3 +
 .../devicetree/bindings/net/eswin,eic7700-eth.yaml |   3 +
 .../devicetree/bindings/net/intel,dwmac-plat.yaml  |   3 +
 .../bindings/net/loongson,ls1b-gmac.yaml           |   3 +
 .../bindings/net/loongson,ls1c-emac.yaml           |   3 +
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml     |   3 +
 .../devicetree/bindings/net/nxp,lpc1850-dwmac.yaml |   3 +
 .../devicetree/bindings/net/nxp,s32-dwmac.yaml     |   3 +
 .../devicetree/bindings/net/qcom,ethqos.yaml       |   3 +
 .../bindings/net/qcom,sa8255p-ethqos.yaml          |  98 +++++
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml |   3 +
 .../bindings/net/renesas,rzv2h-gbeth.yaml          |   3 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |   3 +
 .../devicetree/bindings/net/snps,dwmac.yaml        |   5 +-
 .../bindings/net/sophgo,cv1800b-dwmac.yaml         |   3 +
 .../bindings/net/sophgo,sg2044-dwmac.yaml          |   3 +
 .../bindings/net/starfive,jh7110-dwmac.yaml        |   3 +
 .../devicetree/bindings/net/stm32-dwmac.yaml       |   3 +
 .../devicetree/bindings/net/tesla,fsd-ethqos.yaml  |   3 +
 .../devicetree/bindings/net/thead,th1520-gmac.yaml |   3 +
 .../bindings/net/toshiba,visconti-dwmac.yaml       |   3 +
 MAINTAINERS                                        |   1 +
 drivers/net/ethernet/stmicro/stmmac/Kconfig        |   2 +-
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 401 +++++++++++++++++----
 26 files changed, 498 insertions(+), 72 deletions(-)
---
base-commit: 2caea0c68b85f5c2ee505a7fc0fe8d71060af7b7
change-id: 20250704-qcom-sa8255p-emac-8460235ac512

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
