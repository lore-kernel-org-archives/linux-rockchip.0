Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE87CEBF97
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaA7nJswkcBforJ9AjYEMgE4aepXUboEU9+JtoFynbc=; b=ZgH1E4EWvXNG2p
	cX2T5FEY0IdfpzKebpYDKmorB3Nyb87aonpD1cLF3K+f9bfy14NYwaj52s1/g2QFo62QjDPjUK7qn
	rLlmde6wRuq9iswY9Rl7oObX7ziKQR3iXAM1PeufhNVBetjUYO0uUUbqnAjZTYIbYdXfICsCDae5a
	ANyaaQvR0PCe2xT1ySaAqMg57/cHW1Dh7DDpCk7DsJrpt2qlUehW+JOkaCljb6hXWNhBu0YJSxca9
	0hodNF5bQ8YU+4R4BqS9yiIxcraGbK0/SseuWRFlSYuEtUS3MkDXb5p5XUrT3GRxb6HS8oTXoi4qE
	D8gSjwBIIWxCwr/TELUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhZ-0000000ECCz-2UpI;
	Sat, 15 Nov 2025 23:29:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHK7A-0000000H9JJ-2MMz
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 10:54:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A78aQFt4131402
	for <linux-rockchip@lists.infradead.org>; Fri, 7 Nov 2025 10:54:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t3IKVzBz5JQK8wTUX7NukAcRSdlW+wFpDRAPikZl4+E=; b=D3ciq7sL0T/1mqDA
	KQOUvXh3Mhxuk859eyTuTtyDlTSts27cCw5jo0Qy/Kqfi0+9EEgGjO78tdJgcjiI
	/ZYPn7i8YLL/cNB3YOhXlcFlNRonkS1KARKEuwJrURUm79wZUJENvHCzLGPw3vJc
	sS2fL7+89HTzvn+w8+6DMz910/EXVZ1KhlcmAk6+G8RfEVGfOiJfWEu9s2rqXdfY
	npR/UpgRmaHsmNeiItvcsNJ4uFfteDzCHsTZdCMFaDW+0I45vW7sXMrAK0mQkULJ
	PcBbv6BEOI8XYuVJ4nEOxTArWjAXQf/S/5TbwBToT9e+cq273Msh3ToXZlizm4UK
	z0AxXw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8u3x3s79-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 10:54:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b22253132cso21537485a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 02:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762512883; x=1763117683; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t3IKVzBz5JQK8wTUX7NukAcRSdlW+wFpDRAPikZl4+E=;
        b=EOI9CQuQA36EoFBZmZ8f/IjuaQoK29BYHMSInNr0BbBGzJTDR2/d8E+Ko/g3iDD1pY
         RLTHbqs89h4c4r5ieKrpUCgCuiACC1bDqn0B/DVDDPtCSYn9B7CdKzWnd/Aon6GrjrFf
         HR+NRsHm0uQ/90+MoazRgv5p1CD3nYEqDIXMjDgHbVpEvaXq0XI62P/cYMp5W5TfWndr
         gstu+yJixu6VROqR2brBWy0tUHQ2lSnoXNnhihqen+a128eef0g6UeCen3QDutMKi1I4
         bsUufKemEYbv3/TbgjuJ3gIaJWe7uzD3hT1cdahWnaWwKXxbq9bSVBUy6OY6eRNThksa
         hdEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762512883; x=1763117683;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3IKVzBz5JQK8wTUX7NukAcRSdlW+wFpDRAPikZl4+E=;
        b=oMXTvMc2jFyqdfVROiqP3aellipojETAtv5yul9/6V6YpWFRjLEflKpoV98KYA6JtO
         nkq9/TxmlCpdlqBHYnSDkvau7PlNprdMijTrHk+g4xP5D7ImZxAG75FkLOSyvN/HpElK
         GUnTA21KvyT+dhwwGplQNWqgH50i9/zniMx8t4qA6CVV3whAlXTAYVQgazSlF1hMZMF7
         niaOl5uFh4GaUsEsnPeeGbrMQ69wwefSNCuZS/xJDlJs8v554C9GutNaNm9+bTZ6jJvV
         DAOevJ8H41s9cCS7y3cGb4f8XkQodBIk5ysF1/FUQmeQx4xuZ2dcK8bBEe+Zzr/vFnw1
         eXJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1C4MuNXzylB+kW81Z3b+FAlyIzCe/OjSUBmxX8fwyNcXJjIf04knYU5T7/EaoQOCOnAq8D0eiInu/Hzxe+A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHBhep/rsTZWoxIswRYvsm7T+/cuHlvkPUoEyaXKeTd0JxA4hK
	KKAxHsRC14si5UQB/y3B2mVL65sXpvQ8nyylT1aXC6RY7Ug+hdzuFnOFOBly02rbTSJIfJsYEzX
	J83+NPUIjkwMPONaBfWejFRoS8b/MWVvJwIJU+ZaMALC/XwaRfVftt+IPUbHCHS1rjcOTRu0aFN
	s=
X-Gm-Gg: ASbGncs5Th7QeY9dKFAROqiD5ZjIRURapHv5s5BRc6WawWjLMjpbY6xJAlDW5D6+7Gk
	J+rqtbkjWDxTS2KdD/L3Ic+cQeZvfYCQ0OOKXZGcZ3nRE/ZLwngjmO4orrhaQYyQmFqYU4EHe3/
	5QTDpSsSOErRi+90bCgUWKMNSSth8/+0+EbQD23d7pa/1iwZbRHPRp82t8cLOhXzTcczeXOPLP0
	30A/AbjX9tPv1ZBPMY/4tGw2LdwVNxXAs4aqNgYKzlScRFS8stWQydKbqOksaJNH3lEo6ZTRq6I
	qoMX35XZz4aRKYU68rSj+orl8bA8oUXyoE5m4uJVUfiDcBM1CHwRRV8HjRT+fNyv1XkNq2eCwqz
	iITvBZ+WlJf5YV7NrTO8OtBvAdvkefUat0MLFnmovv4TIP98gu7bCDSit
X-Received: by 2002:a05:620a:2a08:b0:8a2:a5b2:e3bf with SMTP id af79cd13be357-8b245297214mr216408185a.6.1762512882731;
        Fri, 07 Nov 2025 02:54:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFi7mPq0na085cioUOvqXq74YCfsRc6NxnJgSblNj9scHFLGnEvxVACu852vb4CayQn6idLew==
X-Received: by 2002:a05:620a:2a08:b0:8a2:a5b2:e3bf with SMTP id af79cd13be357-8b245297214mr216399685a.6.1762512882057;
        Fri, 07 Nov 2025 02:54:42 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa11367sm205508166b.68.2025.11.07.02.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:54:41 -0800 (PST)
Message-ID: <86df9697-af58-4486-93de-b01df5ba13a6@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:54:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/8] net: stmmac: qcom-ethqos: wrap emac driver data in
 additional structure
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Matthew Gerlach <matthew.gerlach@altera.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Keguang Zhang <keguang.zhang@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Minda Chen <minda.chen@starfivetech.com>,
        Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>,
        Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shuang Liang <liangshuang@eswincomputing.com>,
        Zhi Li <lizhi2@eswincomputing.com>,
        Shangjuan Wei <weishangjuan@eswincomputing.com>,
        "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
        Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>,
        Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>,
        Samin Guo <samin.guo@starfivetech.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Swathi K S <swathi.ks@samsung.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
 <20251107-qcom-sa8255p-emac-v5-4-01d3e3aaf388@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-qcom-sa8255p-emac-v5-4-01d3e3aaf388@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4OCBTYWx0ZWRfX+NLRdECHB47k
 XW6jbc4xSaT95C1BXCMfMQ2aBQaPqwiwOrKjL0szOOF0fE0rOUzONn2tijq3Yy6P7wOyn+3lcn9
 nx8cGjszOLlC9mrRU+/WSt2pCDNsHtGrxB5ZNWVQjBXZAQrWhUw137oIhnvk2XgUQ543MGVKJeM
 +aPUzaxZyhV8/LbCAikhIcJa/9ZWfLXgA66oY/9LCqnjyFhbJ9XKBZXTDMV7JY7IQmaH2Q1k+Gj
 KnM4nget/34Ol2rAMmnx1B47eOnEbhoorRm1S7nu/eGPZrLWZVBeptqo01YtE4kf4SlxneO87B5
 O1yDBV0PvdvXX5PsfCWSGzPaQHsM0GliR1V0koFelsJVhFa49OHJLp4hTFXrryVcRLWKZiX2+bC
 DSag85xldlHb/vtDe1shW7J8GeyuNg==
X-Proofpoint-ORIG-GUID: 9wdt_Y7mKakuK-ULqWnr5pWRN2uVvtHT
X-Proofpoint-GUID: 9wdt_Y7mKakuK-ULqWnr5pWRN2uVvtHT
X-Authority-Analysis: v=2.4 cv=BrKQAIX5 c=1 sm=1 tr=0 ts=690dcff3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4r4FsD-561SDv7fJwu0A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_025444_603964_94420D98 
X-CRM114-Status: GOOD (  17.26  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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

On 11/7/25 11:29 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> As the first step in enabling power domain support in the driver, we'll
> split the device match data and runtime data structures into their
> general and power-management-specific parts. To allow that: first wrap
> the emac driver data in another layer which will later be expanded.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

[...]

>  static int qcom_ethqos_probe(struct platform_device *pdev)
>  {
> -	const struct ethqos_emac_driver_data *data;
> +	const struct ethqos_emac_driver_data *drv_data;
> +	const struct ethqos_emac_match_data *data;>  	struct plat_stmmacenet_data *plat_dat;
>  	struct stmmac_resources stmmac_res;
>  	struct device *dev = &pdev->dev;
> @@ -801,13 +822,15 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  	ethqos->mac_base = stmmac_res.addr;
>  
>  	data = device_get_match_data(dev);

This change could be made much smaller if you kept a drv_data
pointer named 'data' and called the new one match_data

but I don't really care either way

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
