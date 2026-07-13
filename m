Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84FF6C44501
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 13:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wYXkfz5DirEEjJxQH5kfgYIaENV9MWU1Mn6r5N63h8=; b=FhNe0wqnCkX7PA
	O1XpydcxRL1VofKmPhi8eWeSwwlFwxSj4WSIoRXwBYbLMX5gwzBoxYNpIPmoPvAbXvO9Fg0H0RU1R
	6i08eIbyXZXAjcBdJxpREpLQXKyeVoH6Sqm36nFZlcMukueDfGNtoM4Kl2V2Zfcyl+rEzrITXQ4DY
	fnOSbY57V2iHgN8X3KR7CLdZIo6UzRV6K3V9DCwsV1lHs6Z3lvZMziPy90bv/PoxMvWXTCg6+FktK
	ne3bxWdthvaLRRDm4149QhV0B2RK7eAaoxds28edxXJNunKeL1P9jD922gFycgTu83MPWzbYmNYSU
	5Co/c8C/q7cJHqEcNdjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGbZ-00000009NKu-2l8C;
	Mon, 13 Jul 2026 13:21:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGbW-00000009NDO-2i6t
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Jul 2026 13:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=0iUvEQEb5V0jbH92pD3f0+p2Tcm2EEwWR0fzZ8QJ/4c=; b=TTkg4HmRbvwBPpOwHiuHX3DxhE
	ul3V43UBfE/wnq1WA6DkN7BZuf5xZHFUIBz+zkkDM+EA1UQe/9eVO2oH8TbYVx+SkH8EDa52qs7ax
	QooV63tcRrgt5OiAQ7KD4cK55J/BtHAJ96vAVjGdWClYgbbJS1GuDzzX11/TSMBhLekHx6Bp7sL1r
	fULqve51GneboqgbmgPq3jvB7M2EE4h8/CHQ1Oi3mHVzNNub7TZBqxJrA9frRa/cuIe5pXm9SxP75
	7FfBfXSPP3ulOL3hGqGssavI9ncJH/SkYSwo8DKoXi19YVWw3zm8+OdIVBEqmOJDXO7YIjiVb/Md7
	o+Q/pjfg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGbM-0000000Cyii-1p86
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 13:21:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCE3Bw1561407
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0iUvEQEb5V0jbH92pD3f0+p2Tcm2EEwWR0fzZ8QJ/4c=; b=LglMfE3iuaXTOvC+
	Glk4qRQYP1S5h9C9BHTI8RQ5NJdjMZyMlsQsl5fbGN9kik4i7RA6B+kaxzVWS/MB
	AQ2J7J9DdIO8JCI1nDryAb8EyOQVoXHM/Gj/e3SfGjITUXUKhiiGqt+mvjpjEr5u
	Qtj5cWXSLd+AEl2d3ttJR3sh8V6bl+t0FWOUS4pVtm5zBFlaXd91t/H7WGorLh1Q
	xFp7XV18n+LvRnwDND0XpCMXYqLQvtYTEBLi66TqPSoB/JWUvFdxsXMu2LhjX3fl
	bBeT3r+MDRz95I8moyRXQ+uTEWUQMT/TAkSPos5ZuZb9lbQOJfRhS2UO7qLKesAy
	4YslnA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcjn3apd3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 13:21:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c21c01cf3so62253601cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 06:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948894; x=1784553694; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0iUvEQEb5V0jbH92pD3f0+p2Tcm2EEwWR0fzZ8QJ/4c=;
        b=ONiDIFo9+BrtEkPlLx//7QXvPR5UwoTvPViWtbp5CXLlQzQf1cFm+YABGP4XJq9nG6
         hGvhlgdD8jnNn8c0bFB9ALx95mIelupl4NeXbsm2MZHg5lmYsynWeZWBpm4+fx9s/GzN
         86ekKI79BMUekXQa4DQPX5Cbs3YhBN0nv2Ko3u/VLgSNZFCkDl4b952QkzMhcyPuzx9P
         GnxoVV8IpAqWRVRSonw+YMxI1ogkzySdm7oDCjQ9o0Yu33m/wsuplrGEgtjRjoQQRBwD
         o5GMj7JJw63/el7QdhI7DlfI5mYGpj0RvqH554AMfIKj0RcXPrvrJMuRPwmBi0HUx8Bb
         I1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948894; x=1784553694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0iUvEQEb5V0jbH92pD3f0+p2Tcm2EEwWR0fzZ8QJ/4c=;
        b=sXkYbWn4svWMRKE62zNAXzrheuZYJLwjPpZQQBZZ1SkmQnz9xNHEI93DMh7U/hmBix
         ryGLwYR2O8iDrNKxjvuT9qwYY7OaVKU1+8vK5ElCvuQR7anrb3OLQr44r0+gA0IkIZjj
         viElahxK8F49PhSEb2fejIL8YqSBFnPUfntopFpQW3qnLAexqVf6Y6eB97hyhIWDgYqS
         kDIi8MjULKM+k36A9jqzqaA4Ufb+RGDoK6LKvJDbrtu1gWrLh3D5PGwRfwY8ibKwyVGr
         zj+LH+0wlh3MNrOFzM/4YwhEmFmvzmHT6TzBgrXwvCDajr70iVMrdZZYTbKvKmL4za9+
         XBRQ==
X-Forwarded-Encrypted: i=1; AHgh+RqtAGYOEvFZV37gZnmgbbv40K0TxV25Lg6MlGlR02vGcd3LNpijbPxoQGppBXN5Fb45Kf/Kh5MNLuK8ur22OQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yze9DNpWOtFhn4eHQ3xmiBPOqc3KTpyeITrmTYb5I6fP8QpM5is
	YeAVv8PmN0RvynqpFkCwH2zGqdYheVgDrJFtL/9iu9j471tQeyMQ67cqetDUG28lBAvg1J3tThy
	XNiW2KCXpGx424/MiGhCfDPuKwtSXWMnaaORU1YFqWf+E25otE5sD5CcDBnV08j1wvQHistR6VQ
	o=
X-Gm-Gg: AfdE7cn8wOA6xQxs268hKjpO2ah6xcPcR7Q+9NogvhxJbj01IBJWiWAexY1wK+pURJj
	GH+A+jAVwY2ep86cZi7ghB/fQi4mAhwxSlm/d6faocZVg0At19ye5LZLkHmeOdqpHucH+GjavQb
	++P6NxQJKPXIVtiNLbZQozst+6spbSE10wW1yaIprxBEC5pk1ujehOxMmld2rfaxGSwPp4vNGyW
	loj+5mWEH2Mcp6SqFfLoepKX2kYj+fK6MxL+I+Itr91s8pZsDAoVqQ5TuGos2ZGoHtfXnSUWjlb
	Z0QxDjC90jspZEpL+d24jvTi2qxBTg2BMni85goXy7mmCXpi+qaHPQLeVfW75lVPl0c74iVxUEi
	Wv8aCellXu2ux/X5vUSQG+D19RQjL0Zeu+VQ4Rj77
X-Received: by 2002:a05:622a:3cb:b0:51a:6feb:dc8f with SMTP id d75a77b69052e-51cbf0e0756mr87983231cf.9.1783948893513;
        Mon, 13 Jul 2026 06:21:33 -0700 (PDT)
X-Received: by 2002:a05:622a:3cb:b0:51a:6feb:dc8f with SMTP id d75a77b69052e-51cbf0e0756mr87982631cf.9.1783948892921;
        Mon, 13 Jul 2026 06:21:32 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8881:83b8:89fa:1a2a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3dcdsm354561715e9.3.2026.07.13.06.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:21:30 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 15:20:36 +0200
Subject: [PATCH net-next v13 07/10] net: stmmac: qcom-ethqos: fix SGMII
 loopback not set on resume after speed change
MIME-Version: 1.0
Message-Id: <20260713-qcom-sa8255p-emac-v13-7-119f8699ef8e@oss.qualcomm.com>
References: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
In-Reply-To: <20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1420;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=SlOf+BhDICNYWid3SpsPo349aSqYaDdHZpfmoCBZZHw=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqVOY6LAQcF9quKJEcvEh90UXYXlVsW2Jh4yWPh
 RRmPDlSot2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCalTmOgAKCRAFnS7L/zaE
 w9aqD/955VoK6LaO6vaDxw6NTt3itus8v3c/OJJG0p98jDFCjD9YC2veyzrofOQ0TKWJWkmc/qq
 5L+Ac3xpoWqBjo9EjcMJwbHZA7YDaQ1QBEwbfrOIYjfwaQvPgRz543CB2Rirv7mpI1ME/ZYGarG
 Lc53Oo+GNT1knmktmT98TP8TPiwyfLnv6s2jgbfzHlQVdSxInzl6Xba6PrCJHuhMLDi43O/hvtI
 hkq2+mkJvQnUya9sbFoNnDO5XbMFOxMtggKVASqfi5yaDZVn7M8rRonjE1EbIVHWfa/toUesOa0
 P2e0vo0oOBPPSXJ3r+YZC31vRjm8PvCtAFda8qrWLHm10Na27nQ6aU+4dKx3LBtP6fXF1t/Sad5
 GVj+DwHrUg0PX0oR+JFTj8EmlXXKuaFe9+36xK4HX8ntTUknyXl/r3jEBsr+BP3e+vriuO1WGBN
 4gURGfViayyslZFJuqGaC3rGsj4SIfzqaN+4tboTUYzP7uHFYkFngFdmj/ItLNcy5oX2pCfSoIQ
 JoFgO/XoSylDbz5dTihBwgI4MureklGQDOz7Y1MVSeQl71Uo6PMERaIIUr/PlMJ2PFikXISCBbz
 B/8f1XlpUku81iFnZGKEliv4krJ2aF3MsOEoa7ov34PUKUoIyWfcroB/lyMGxpL2A5g4yFXqFEj
 krC1QUE24KD0tBA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX2aXQL1Y6gPmz
 eI2S6w+T+ZlyjXe9cm5Za/UsONc5NJz6sKPHBzfttka8ZPh3yb9EzWXcZiDLXsOh/1iSWn2s/RI
 8U/OGtUydVAHr4hq5kgwuN4iAgJoYMCKIA/vPqRDQuhjotRePU/AJkIHw49HWt/8IsUB73GlH5G
 4ofErHF93GInwZBxrXZlE71rIZB35+frx7JJq3gZsirVyU68dBUeG6Vg8pa7fs8oOPlVIt/aZa5
 gbhmoipJ2vazELuy1618d3NKhYVx+yaN1+DziRPY6c8nGFam0EfXqcmQ4YPvVSv45Rd9SVUWMIQ
 pFO72YrN8VAbFIUIDAT4Xce6CQZibuUxYQ1/diTeEJMrQlX1TKlpRWGtxrdK310X1NtE7wDXS4+
 ql54qxOvCrFZJwBPFtmeVVhe6Qi/o/kpesKuC3DGpux08MYa72m5BeUtPzrFTFIKr0wfnzCH9we
 iGqZ+GUgR+J/bMKeLjg==
X-Proofpoint-ORIG-GUID: zWooka9FMvUfD4v_nDxmNmMt_ahKwfj_
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzOSBTYWx0ZWRfX9C4G/8JXgKf7
 Iqo6jTPw3VASrbMQaSe1YttZZif2N9kykOWIQ2u9xQJe8y5NOtRsZZ2AKc+MhScB50+uLRwZ/Uh
 460sVLEM+wNEeoOH1F89vsVox/C0NeM=
X-Proofpoint-GUID: zWooka9FMvUfD4v_nDxmNmMt_ahKwfj_
X-Authority-Analysis: v=2.4 cv=aaJRWxot c=1 sm=1 tr=0 ts=6a54e65e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=PjAGQVefHaMtIuCO3vkA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_142140_733184_4D6C424D 
X-CRM114-Status: GOOD (  13.82  )
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

The loopback in the MAC wrapper feeds the TX clock back into the RX path,
while the SerDes is being powered up. Without it, dwmac4_dma_reset()
polls a clock that never toggles and times out.

qcom_ethqos_set_sgmii_loopback() gates this on phy_mode being 2500BASEX.
mac_finish() now updates phy_mode to the runtime-resolved interface, any
subsequent resume with a 1G SGMII link skips the loopback setup and the
DMA reset hangs.

Extend the guard to include PHY_INTERFACE_MODE_SGMII.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 9d19203ae4bd7dc17aca068f5eb88ff830e4e906..e083d7d55782ec8310e9375e466be00213667457 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -190,7 +190,8 @@ static void
 qcom_ethqos_set_sgmii_loopback(struct qcom_ethqos *ethqos, bool enable)
 {
 	if (!ethqos->needs_sgmii_loopback ||
-	    ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX)
+	    (ethqos->phy_mode != PHY_INTERFACE_MODE_2500BASEX &&
+	     ethqos->phy_mode != PHY_INTERFACE_MODE_SGMII))
 		return;
 
 	rgmii_updatel(ethqos,

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
