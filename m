Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 518B4C43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 11:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0TX8xZ1RsyhbQMs54uKs1TeGm+sPr2JgX/bnnuTPc8Y=; b=WBVCAskkZeNoJ6
	CPcZFMny1hYJPdBuu/bQeX+JFXZ4BJWwiE+gn/Hh/QE1A8yEO2Bbp0gG4UcPuhDOmxKDb22ZELmPI
	GYHjJtkAbnjcarV9cPXVQlRoOqBYKoYkwiHIPLEB/uVxDUjlJJa54A0vMhEJvnBb7SV0LQzrguMO8
	NuVNWyu+MlMHDts0q+MlYIOeIg9GvEYxZ3ETaFFWepXILbaJWl6FC53mKDr4vvNVtJ4f5hDBtDak5
	vTGPnNDT/y0zmcHh/HCgrjBXRr7c1/Xeo8JeEKqw72jza9EEoSGAT2SWDgIPwPREAiyG5P9kGb0/Y
	pe6IVglq48L9sBtQlIxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAAx-0000000ERI3-0aro;
	Mon, 29 Jun 2026 11:29:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAAt-0000000ERF0-0a4s
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 11:29:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TAT7mR2627945
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 11:29:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Upw75PcXyy68WlOAyDJOIC
	UGb7kPKOHDSv26rXko7pc=; b=Wv893MEJ5CDA7qQ4tkvxKbURrlTBR/JjmLoLZx
	b6/94l7eScZQHwTQPdlabs/I1v094SWM9byDUgwBpO8huWmEWLS1P9frHUYJQYN+
	s3wG/2q2wrJZbjjKKAPSRNqcKCWQiPkd3PlzrZgYnSk4KTnln6u9m+Zxx2HuNSXV
	rWHuJIBH9O9iLDCSSZu1zdDUh/R9zJHl/JYpj0hspVvmgYKHkxk5TPYVhLOtife/
	cCBuLinMEQBGU5FzMxg7gdTUBWpR8MmWYsUvddIKu1580nM1S24+1D9bcqclUB80
	5X1YR0DRi3HGjUfGUqWw/zg2z8MtI70Yy3BlVvEEDDZgAjdg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3nbgrmkt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 11:29:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e4aeea5c3so132574985a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 04:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782732553; x=1783337353; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Upw75PcXyy68WlOAyDJOICUGb7kPKOHDSv26rXko7pc=;
        b=cVO8Oq2Y7uj41eivl5FCpDZ+SQFYAYnW8+rHIoPbuXfQkqZEtmo1zYtRPLoxkXeZ/X
         qqb0mfqJHfQov59Hrv5017zA5ZujovEf5F8ZnLvqLo4QGUrVoam2PwAhElDlHQhuhpKg
         I5cJZmUpU1dmcwwE2Uqg2/XMzOBHJDRw3S4/9FdQ5BrLOl2K0JkVSinrw97QMbHI1Ube
         inPTBDpQDQyPIKkRhIhOyR91JGKI7c8c+p035Wz8iODitLTgOrX2Cmbh5+8+mFxbMciB
         9XA4O4/OBoS0Rq+0PnAdZXde20jkAMlNypL8ms+OcU+QLlryT/CWm1s0XBes1tdoEQYS
         uJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782732553; x=1783337353;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Upw75PcXyy68WlOAyDJOICUGb7kPKOHDSv26rXko7pc=;
        b=EGoMHe2kXbHvbedyFOuWrKu5PbNnxruDsNrsUcV7iuVBuGKvCOkKp1M/63dTS0NYa2
         iJosRYKr8o7/p+aTC87pJFnkTJdlyCUaCeu8i3w7QuFARL0QRyp1tQnE+y/AHX+HDBUV
         I/lG6rOFjkx5GNzeIcnWZUByR9dKhL4aRibx04OuQaF/yEpZtPY2+pyTNfeObzuNHgpq
         zteQ3ZiMZkpD4J9qgYztEXxbGk3axu1FGC3WziwvUgrTAYLYQUsC+JOZTHkJd25fT87S
         NpioWlC8fkYHXnDt9e/BHeP3QeU5UPRgLJdBCb/zOIoRomdQL9paolq13IvSqTqShtYN
         z1Qw==
X-Forwarded-Encrypted: i=1; AFNElJ+8cnjyNkNMMGruXzpQvm4ulI1XIRKjrGWFVw6bwG3m5yq42pRI4M6KnbRSPfgemcO/lXk/jm3aXZ2unooR7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YympxHNGMpX0pMrOXFHlZiXumEqI6WKpHUKCs6nscf5r/9xJdtJ
	IfolkrAXLKs52/J+gtP4zEfLrxf8LG1iTOKQpMNZc6qGrBtvFzHYTY0Tr2YbHKJrxZm/El8As7z
	0a9Kih7rA3j37aQKwTYgkXkZCdtfXs+RtLwoPBeo3Z93gXlGR/DMOyEw3FIqSqmiwcj3rCOINMn
	U=
X-Gm-Gg: AfdE7cmHmLO1z2TP4KC9HmEN3ChDDgVFQehuEju9UB4KVLygF3hqdbYEokc0RgUiM28
	FK3e7lP87LoD3ZDNUJdWnza9+K8js+qB/9+4RoEMzhK4N2YoHiD2uEu6c3zNJlxvdYMFOGyLlD2
	yRHQNAvgbmzxZpf4g7+DbhhDbuixT0r9tZhCzGfdYdxmeaABP24EfRlmQppvUrbnjJnjSvoN6uZ
	t5fEnjxDmYA6XyJQ4qFKqUKrGIwwRjXVQ+Jsyl92GIN/3l5bjWq8UXcC03a1eVuYB0F32GUw4g4
	GsZqosNF7eG6WTlZGIO/2B7722jdRxXIYbx+gj9u1AxRjNrysnNsGzbK3F6d+tvtCXlqrYjwGCf
	btN8EEmzMBM8EhXP6g7y0mwt75ZUIY+nfdXE/St78
X-Received: by 2002:a05:620a:2252:10b0:92b:6e09:b0d9 with SMTP id af79cd13be357-92b6e09c3a4mr895293685a.21.1782732552873;
        Mon, 29 Jun 2026 04:29:12 -0700 (PDT)
X-Received: by 2002:a05:620a:2252:10b0:92b:6e09:b0d9 with SMTP id af79cd13be357-92b6e09c3a4mr895287385a.21.1782732552385;
        Mon, 29 Jun 2026 04:29:12 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4640:d76a:6126:9b65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46d86960983sm41936351f8f.4.2026.06.29.04.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 04:29:11 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH net-next v11 0/7] net: stmmac: qcom-ethqos: add support for
 SCMI power domains
Date: Mon, 29 Jun 2026 13:28:46 +0200
Message-Id: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO9WQmoC/3XSwW7DIAwA0F+pOC+VbcDATv2PaQeSkDbSmrRJF
 3Wq+u9zI22NFHpBAsPDBt/UmIY2jep9c1NDmtqx7TuZIL5tVHWI3T4VbS0LioAsODDFueqPxRg
 9WXsq0jFWhTcMpG2sLJKSc6chNe11Rj9Uly5Fl64X9SmRQzte+uFnvm3COT67ASHjTlhAoSm6U
 DWYmP3uq+3i0G/7YT9zk/4nEMjlCC2Es45dGUhDLFeEeRKYrW4yQjSOmQG8q1JcEXZJZLOwQgD
 WOukYG+3XhfCTIAw5goUw3jUIngxj2vXjuD1/xy/ZetzK8Hh5ARgQ6RXgOeralBRrr9fAnIn7y
 4RBA+cgJ1AtEKCGYEr3AvILCDEHeYGsJ3Kl/C+gfwGFJZTNKAhUWR+0SY6bhl5ACAuJdLbj4NE
 vQQOVpH1EzlD3+/0XZnMXrDcDAAA=
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
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5779;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=zST/BG6lwE90KABxMz7C3gimOZiCUsBv6Z+vt7mot+c=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqQlb4z6i1V7LFPiYX7myMy+Zab60t8f6FaZvYc
 S6K4a2vmyyJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakJW+AAKCRAFnS7L/zaE
 w6+2EAC4p6MaWsl6CLBa20s5cg0XwuSA/09eEWosU//24wUcxOXeBCC0Ckj50xzZ9UafZh4uUAH
 A2t44kyEH7JNfCuK1zs7tyaD1NrguoATbzaRb+LlExpE2QYuX12VjND3MyeMwVjxO9kQe6tst1n
 cCgy7RqINwHDoSAZsEKE0d+exMWpdVOZtVYs8ODTE6PBhj+0ACoesyV5Ys/H1qJo2uFK8TyrdYm
 HOKUSOQcwDjEDmqGflmVMH1DTH1VFzvTKCDLr0iPeiHBbm2kLgYQOo49hAGSJx0PwqHetMHnijZ
 TUELl9CBuXQSDkB9IvnYn425GWyWUAswNoIxgLbVBeocdeMLyb1+xJqrdcqdBDeoYHeGA6JVN5A
 Amrcq8GVA24qnZgqv1DLVmbZRF3n6RBPDfu+hp3DzX8SOwzLOWmjBe6pWfJgeNjkGDE4CaMGwYy
 AojwsvrwrrXsKAdMKPOF9JnODe8W8M6W7xgFCRAHvGv/hd5sK6cIytAVtoQwhIXw7l5rOjgXhCX
 /hAUJFLF93knEoI34kI1JLAA4qjgqk7hCOGv8E/oWF++NzkbaTZe3Iqbd9id0g4KtGg6XtvOKC+
 P3BDLM8h7ex3dS0B+E8tEUC6HqqBaaVN3DgdGm2sBzMUMD+Cgdj/FSGamA/r0/SynBZ09PsL0xG
 MF2d9PgEUuZMQFA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: aSc_KdbEUVHBFqgJbIHqa4zWcVbxBXeR
X-Authority-Analysis: v=2.4 cv=Z4Hc2nRA c=1 sm=1 tr=0 ts=6a425709 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=h8s98YD0dNPsP74th3cA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA5NCBTYWx0ZWRfXyUrZ785vO3Nu
 g+kQepO4e9xogZJxpJIZtl1+CQbZEOmvh7IXEGjAd3nh1xXHQWqheJE+DTRLroEv+KUu6PEHnMr
 X2woZGEgVXzpnTYTMvIAZopkWdZLnwY=
X-Proofpoint-GUID: aSc_KdbEUVHBFqgJbIHqa4zWcVbxBXeR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA5NCBTYWx0ZWRfXzIma192ppZSU
 V8iTsmrGyI1RkXKVzYfnqzej/h4J5i/Axcd6O4mLFyue7njUX1GmzXm6DJc8GQFAZ0g7Os8AsaG
 elrXgRRIZKOUVbpENOGtTa/sJZxCIYjl96Sd2S/S8rIlp47JwWksEQCaafl5QpBCgit6uqj7h98
 +4YfZn1notr4QFZv28OliN3grd1Tpr2mKhnI0+Q8mb/849116k0muzd1xd8MZMsTqCpzFkaffrn
 h7lHeKrg7nVvPPXKw8Oa4tWJ2GPHTeeDp9A3ecKmdv7IFl88XiOaIzQAlYDOMig+vVun5myUB8J
 odU+EtahtrdweaJpaG2QkUeh0mHylgtcJAXkpWyXaklCdHZLRRJoivD3yTAxZjCzoevIX5l762E
 cNx0WfP8RvDw8p/R2osDKBpZLqxGiCF0v3Yegf6AYwGnEoF5wjN7ZmEqrRbylK+fFokirJ2hB9N
 FmELZmtg1c++wHmcD4A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606290094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_042915_298043_6ECB3B31 
X-CRM114-Status: GOOD (  18.35  )
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
      dt-bindings: phy: document the serdes PHY on sa8255p
      phy: qcom: add the SGMII SerDes PHY driver for SCMI systems
      dt-bindings: net: qcom: document the ethqos device for SCMI-based systems
      net: stmmac: qcom-ethqos: set serdes mode before powerup
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
 .../devicetree/bindings/net/nxp,dwmac-imx.yaml     |   3 +
 .../devicetree/bindings/net/nxp,lpc1850-dwmac.yaml |   3 +
 .../devicetree/bindings/net/nxp,s32-dwmac.yaml     |   3 +
 .../devicetree/bindings/net/qcom,ethqos.yaml       |   3 +
 .../bindings/net/qcom,sa8255p-ethqos.yaml          | 107 ++++++++++
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
 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml |  51 +++++
 MAINTAINERS                                        |   1 +
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 230 ++++++++++++++++-----
 drivers/phy/qualcomm/Kconfig                       |  10 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c     | 161 +++++++++++++++
 29 files changed, 573 insertions(+), 56 deletions(-)
---
base-commit: a8bd881f6c5eeb8fedf29d8dc0df9296de576f93
change-id: 20250704-qcom-sa8255p-emac-8460235ac512

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
