Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0316DC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYu6Imch2brVmC5VLUu2+JBBRO98Y2q/TlEJeB3FByg=; b=lQJNiHgw9T9sfS
	78O7ykAw6o1gPd5sjHiJP0sKCcdV3YJ9A5hlmX64iSLSdG0SSVkNxZIktUfkRf4zlPMo4ypMoTF9L
	nFy0ngHYxFqn0ID7YNi5uaNlAZ01p8JCYQK73EnXw+i/9F/mnAGxkfFR2vKMtRtzag7+u4DxuFEHg
	IJl4RjGfM1uuVScw9vjEodAFtglLPQ03ynxv5090NhLcHl2ZqU8x8JlXAZkLJeeQSWX9ntuPo56mX
	phE6dmU1fEMZG+xvKck5ASoXWNaHa9qeiKqLjsU0jANQ4IpuNR2LV0suLf6FN0AVb7OdQXihkThTt
	b2QgGOqajG8ftwF1hhIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9OhM-00000008fKg-2OgN;
	Wed, 23 Sep 2026 15:15:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oh9-00000008ezA-0Zvr
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 15:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=; b=BTK/liW0MD1S5a/UZ0axtSBnBh
	65y0pR3l2uFXHWbVcZSNqo+6dBX+OJU+snVk+qwmkOAJwiTnWopbgQb4pc9l3CsmcgNUfSgzJ9D5A
	qHOCPxUKY1I2bqDRWZkzXQNB3FdpPzpBlVrvPjKoAHA1TP7jVjwu2UADmrUAHjY6S+01wVzZTkeLD
	CmYIGZTBzOJUa0B9f4Jg8TzOwEaqG37jPH/L0fJoqm/y2LoYxHI2yVE0lYYMJ4iyeqrvjvm0qqoOp
	triFRhW5zeaoA8rg0zOFrwNxANB75MHkcqXNk7jgpLoPk6+zM/PtZjgs5dX+r2dWRcyKJzKIE1JSy
	WsaPNI2A==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oh2-0000000DZEC-3E3j
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:15:38 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NDLqLm3842694
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=; b=ZFKjuO+W/WjJvmGg
	OUC9G6pvJHI+5uSg98l+xDPOYVV+JpUsY1USYaxHRdQRisjjI/OlVvBaxTwr4NRn
	z8IZph4TNZSpL3SDkck/OjiVy+h0kgWTNitZpYnxU7/fhnSIlFwKcM4uJgYxHnzC
	Cttme2QU8lnbJMuBi0Qsxg0ZIX9I4xva1eWC+F5i3P3PhEXyLr4BN+tkOFIGb208
	qIY1yEbbg/DUuJLGSxpWzhJyg8hwKyIq9vyDpDi6xhyQc6e9nNPp1a1sDR1GNLxp
	rQpkdvsHaROlwB9eMRzuA2AODf/E24LTqdGdQguaq7ewaEQ8O/m6K1aqbbx0VjQl
	qUeUgA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvfkbggtj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 15:15:30 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5c9a93f5f3aso1321211e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 08:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790176530; x=1790781330; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=;
        b=bY303IrVQ7Ab8/DJITqKlRf4sovZHWGFT9yrPk7QGOkaENDbUtkRBs0hf9X4EqLlRD
         BB1TlB7J2JdB1C8JVeA7D0YmnNA2AwPY9E5cdwUki83AzWcckt6Pq8gncPuv5r7f6Rdj
         8QkyznCSNA8oWgPwL2kT+z2+hgJg2SMIr/UPz9d8ceoqZH5rFlYP3mB/veKX97VUii32
         CPXyJvj32WAx/ZXmm0XDsmCfWIxq05eHhpMXzEa7M0crK3JVE5ahURPfrtTR/CpHig2c
         YsSQJ8zSITQSUJ003jH1zoERcfyk3v2ltDJwzoYauPrXMlK9bbsTpud1rWYTOIFfXOUW
         7s0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790176530; x=1790781330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9gGv4RW/KPav2gQfSDhKD53xcmE10Fw9benIy8+8ItU=;
        b=l5ldzfj2ffNm5Z0G6nOEqiT+MqBS8KzVqwFO1LZ43Q9o514LEc/9R57Y3WNlYtCNa+
         QosYqVUuPAAm0TOGlQkXCa2WvCD2oz10uSkxyyl+q533veTz9Qexgr/xXhUsKpN9ymDZ
         ZF5dqTnkk+NXRRRuwQ/TPthumueX2M2Yv7sOJoUQBSvJ1RW5gYZXM2BsozOD1P16L2Av
         t34duFPIOEtFnJHwRn1vL8RzkfKvXY2x3ZkKOTQ0UpfapL8BsVL5Jr1p1LHSESp9Kme+
         MKek/x48L53pTaKUQHjjSzt+OABlC2+oQ3PZ7c51o9REivApk/IpM2vthsvWWqCRvjAz
         OOiw==
X-Forwarded-Encrypted: i=1; AKwUvBwI2kr/cgdGO4LGbzcG2noUEkN3/tQZJ+8/1kKy4FSYgzmqQH5t1fUzTkWuW1sPz7zWSPJNE+lADoxtZUEX1w==@lists.infradead.org
X-Gm-Message-State: AFuF++nv9mgmfiHekVTG2sPKe+X5ma1PCzgx2N/9Zu14vID4r5WGwOWG
	I8RgvspmmjTwimZ9sDIkoymYlD53YeIM6MKNsyK2uMw2BAZy1m/iPGnUhh5Vk8ZUuyk6qixhQ7/
	vawfImarddL+QDYmPzMwegW215oeua8iIA7rdHoMBA5jLcYCdGWBk0bqTT1IEH4WcA1YU5nXF2h
	o=
X-Gm-Gg: AYBFou3Cxv9OM+LNdpX642KX8WYLV/shK5pZ6xbJvDVipr4KmxfkOMcX4GhX2C7cyxZ
	eQ8WNOHlsLACzPWj7P4lcIPiE3gvzIhu8Xca+gCYXSramfu5ks/wb8B0JxnyIRqxTyh1twI2+kT
	X0sf4HSmjYLFZfqfV/GbnU1nLYVa8FcdvN+fKVDnjX3xbGTH1+njhI29wnW38lH9CFI/SHeVHzv
	xK/pQS5I0SL0PEAX1tFBH7KSvAEgFnJkDLNYza3p+zQXf4mlaN2vYd7e3innxlnL4QcV9uBjCHB
	BREOLrt5a1liIBwu5Nwkjl/e+YUAgGv4B129/L2sitQ6+gcsFEtbkc7NK/0MQ51/VPzMT/0yv48
	MtnWbeogT00LYWD27zfMCXpL9Zu9f
X-Received: by 2002:a05:6122:2907:b0:5bd:71cf:e97e with SMTP id 71dfb90a1353d-5c9f159bce9mr3537698e0c.5.1790176529570;
        Wed, 23 Sep 2026 08:15:29 -0700 (PDT)
X-Received: by 2002:a05:6122:2907:b0:5bd:71cf:e97e with SMTP id 71dfb90a1353d-5c9f159bce9mr3537623e0c.5.1790176529155;
        Wed, 23 Sep 2026 08:15:29 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:34c6:dbd6:5b58:a3fe])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe0c4054fsm55126325e9.3.2026.09.23.08.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 08:15:27 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 17:14:43 +0200
Subject: [PATCH net-next v15 9/9] net: stmmac: qcom-ethqos: add support for
 sa8255p
MIME-Version: 1.0
Message-Id: <20260923-qcom-sa8255p-emac-v15-9-e82f33720737@oss.qualcomm.com>
References: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
In-Reply-To: <20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com>
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
        Bartosz Golaszewski <brgl@kernel.org>, Radu Rendec <radu@rendec.net>
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
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6330;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=UGHFNsex6g8X5xVVwk+2JQcFTMSBk5UzaI5QwWng/ec=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqs+zsy822c9Upcjc3fWGOonm+493ecsXtKHWTy
 hldO8PYvW2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarPs7AAKCRAFnS7L/zaE
 w0a4EACP/rciP5pBNKDp/2I+HbmSnRxi8PQfuxVKO2rORNBSmMNiZcdJVegAOH8J5guo/HKr2F6
 Ww4oRSGLDyFKLJZA3hcEk3/OHR9ed6hhHggIQpVfzWpya1L+88OIeKzU90TWSjiq/YZC4YPzgtp
 HUmehsJwUnbMGGnJIvT5dfheltTL/cbsWDCOcxohurbMCDx40zxXhx5u3LuCcGQmXZB0C4M6mrx
 ScsQlwXliFtTYHcrnm6eP7g8a5tuecKuf5DnCEHCV1NglwXBqUijBp6uZezqwXuwiGvt+/IOXQt
 VIbzlrouxhb67nQqrdrQgwVB5fmtfYZtW1YA7Ogm3vmXepy0RYEmVi65BKIIL1EPzF8Va/o5JiL
 DUNFSPVoQfH9RDPBf/X3CGIwXKrVtthkweor97tELtT7AVMrGN3CWPeVKun6U+ASEPDvuvqAOdT
 dKFsxpeRSA+EnFQ/WibNDHQrdkLvrnSknSiNf26FL7dH6x+X/6Pq1K9d3kUgiV4h4ZPSdL8H/Th
 poi453B1SDwkxO2iwf4HOegf9ki+q6x0jIsbes+eAfSn6SV1Yk8p2leXHk2mMRlLTtvJG/xtnas
 LUyzQk7BwE033n/HGlfWD2xUIrzUvdMGYznk6oq35if4+LwhFrXikvckFT7fAl566XMbCK5/Mhc
 233/lUFo6GVU7lA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfXy3ieK2oxoJSa
 4gZvaqgImljcKBnIrrgHtF8V1pooaEiNOMygYZgHllRNHnDWW6q9BGjyXWzAOv3XzBjILbPp5gn
 3jO1zQkan93bQd/a6oW5//kGrS/TE00=
X-Proofpoint-GUID: BFXekb5c_O4xZVagqFELwCPZTILx1WPB
X-Authority-Analysis: v=2.4 cv=RYMFmFtv c=1 sm=1 tr=0 ts=6ab3ed12 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=MNMbB-VoU2yS88OP0PEA:9 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA2MCBTYWx0ZWRfX2aR4EtM3SJs1
 Hp4Wa/uxWcXaiT2f4RpnWt9sGzF2q/SnY0J28OtenEKtlmGdj3js2oIxgeVsK0O9E1C/57JkFhM
 7mj+zymT7gqVbtog6RSUoDBpFso1LswkDMD+yIQZ0xfu6yni6qZRiNPsnPHy0hEnWitgqasXh6b
 lfLsgEVbGp3KW1PHsgJeeWIoJ1X47gSnV3osOSch4TDW4J3y0lFeGa10Z9nA9UEuMtScev8m+x6
 0L43AQtn1jrELxZEBi3yhA0McWENKHnSiqd0aP2J1NmxAP3O3uXQ82rrKe8JYG2/CjSMDjPxMb9
 57R4whHnSXFYKBSB2e4lH0PLirshoY68mSprKiHIjyR767FqnggZkAbvhnJuvegnrTdTMGffuLz
 BWzvjJPBXl+k8jGq7S0gI6uHAuwIAaMMglgF+UgKWASsl1jyIfI76LM30VeQSkqVfdZoczNAE8R
 o2KHS9LnTOlyzYrbdiQ==
X-Proofpoint-ORIG-GUID: BFXekb5c_O4xZVagqFELwCPZTILx1WPB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_161533_069162_D6B821C4 
X-CRM114-Status: GOOD (  24.88  )
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

Extend the driver to support a new model - sa8255p. Unlike the previously
supported variants, this one's power management is done in the firmware
over SCMI. This is modeled in linux using power domains so add a new
emac data variant and a separate setup callback.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 107 +++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 509a5368e69a8fa440bf3b4f58f7b09a683558f3..3d4bc950a72ac0d0d9515bf9148e865463ddc0a3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -98,6 +98,11 @@ struct ethqos_emac_driver_data {
 	const char *link_clk_name;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
+	/* Fixed PTP reference clock rate, used on SCMI platforms where
+	 * firmware does not implement the clock protocol allowing linux to
+	 * query it.
+	 */
+	unsigned long ptp_clk_rate;
 	int (*setup)(struct qcom_ethqos *ethqos,
 		     struct plat_stmmacenet_data *plat_dat);
 };
@@ -108,6 +113,7 @@ struct qcom_ethqos {
 	struct clk *link_clk;
 	struct phy *serdes_phy;
 	phy_interface_t phy_mode;
+	struct dev_pm_domain_list *pds;
 	const struct ethqos_emac_driver_data *data;
 };
 
@@ -207,6 +213,8 @@ static void ethqos_set_func_clk_en(struct qcom_ethqos *ethqos)
 
 static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 			     struct plat_stmmacenet_data *plat_dat);
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat);
 
 static const struct ethqos_emac_por emac_v2_3_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x00C01343 },
@@ -311,6 +319,30 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	.setup = ethqos_hlos_setup,
 };
 
+static const struct ethqos_emac_driver_data emac_v4_0_0_scmi_data = {
+	.has_emac_ge_3 = true,
+	.needs_sgmii_loopback = true,
+	.dma_addr_width = 36,
+	.ptp_clk_rate = 230400000,
+	.dwmac4_addrs = {
+		.dma_chan = 0x00008100,
+		.dma_chan_offset = 0x1000,
+		.mtl_chan = 0x00008000,
+		.mtl_chan_offset = 0x1000,
+		.mtl_ets_ctrl = 0x00008010,
+		.mtl_ets_ctrl_offset = 0x1000,
+		.mtl_txq_weight = 0x00008018,
+		.mtl_txq_weight_offset = 0x1000,
+		.mtl_send_slp_cred = 0x0000801c,
+		.mtl_send_slp_cred_offset = 0x1000,
+		.mtl_high_cred = 0x00008020,
+		.mtl_high_cred_offset = 0x1000,
+		.mtl_low_cred = 0x00008024,
+		.mtl_low_cred_offset = 0x1000,
+	},
+	.setup = ethqos_scmi_setup,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -756,6 +788,80 @@ static int ethqos_hlos_setup(struct qcom_ethqos *ethqos,
 	return 0;
 }
 
+static const char *const ethqos_scmi_pd_names[] = { "core", "mdio" };
+
+static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
+			     struct plat_stmmacenet_data *plat_dat)
+{
+	const struct dev_pm_domain_attach_data pd_data = {
+		.pd_names	= ethqos_scmi_pd_names,
+		.num_pd_names	= ARRAY_SIZE(ethqos_scmi_pd_names),
+		.pd_flags	= PD_FLAG_DEV_LINK_ON,
+	};
+
+	struct platform_device *pdev = ethqos->pdev;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	ret = devm_pm_domain_attach_list(dev, &pd_data, &ethqos->pds);
+	if (ret < 0)
+		return dev_err_probe(dev, ret,
+				     "Failed to attach power domains\n");
+
+	/*
+	 * The SerDes lane, its clocks and the MAC AXI/AHB clocks are owned by
+	 * firmware and brought up through the SCMI power domains above. The
+	 * MAC wrapper itself, however is in the kernel's register space: the
+	 * wrapper bit that loops the PHY TX clock into the MAC's clk_rx_i -
+	 * needed because no recovered RX clock exists yet - is not
+	 * configured by firmware. Without it, clk_rx_i never toggles and the
+	 * DMA SW-reset polled in dwmac4_dma_reset() never completes.
+	 *
+	 * Map the wrapper and program the same loopback/functional clock bits
+	 * the non-firmware platforms rely on (see ethqos_clks_config) so the
+	 * RX clock is present by the time the DMA engine is reset.
+	 */
+	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
+	if (IS_ERR(ethqos->rgmii_base))
+		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
+				     "Failed to map rgmii resource\n");
+
+	/*
+	 * Register clks_config to run on every subsequent runtime resume,
+	 * which stmmac performs after the power domains are on but before
+	 * serdes_powerup() and the DMA reset. This alone isn't enough for
+	 * the very first reset done from stmmac_open(), though: probe()
+	 * fakes the device into RPM_ACTIVE without invoking the resume
+	 * callback, so whether clks_config() has run by then depends on
+	 * whether the device has already gone through one real suspend/resume
+	 * cycle in the meantime. Call it here explicitly so the wrapper is
+	 * always configured before the first DMA reset regardless of that
+	 * timing.
+	 */
+	plat_dat->clks_config = ethqos_clks_config;
+
+	ret = ethqos_clks_config(ethqos, true);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		return ret;
+
+	plat_dat->clk_ptp_rate = ethqos->data->ptp_clk_rate;
+
+	switch (ethqos->phy_mode) {
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+		plat_dat->fix_mac_speed = ethqos_fix_mac_speed_sgmii;
+		break;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -843,6 +949,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
+	{ .compatible = "qcom,sa8255p-ethqos", .data = &emac_v4_0_0_scmi_data},
 	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
 	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
