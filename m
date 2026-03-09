Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63FE5C4451F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QXdHLy/pChJ+xM0V0gAeccSC2Awl7/pX7kpIf/nuUc=; b=k+LTs6S0vLKZAe
	VuletRyEFJXlY8/bqKZN4jkjkhBKCI3RlZhAHYBE9Zfti2A2Gkw6jOvw++WlkMOVAo2W9EG0pEfqH
	evtEHWtDzIuukAqM+8eoROJDiJ/+btmtixSUd0x4OGAXROKed3BvAtVtDaSaYCRtut4mOuYfU09Cm
	n95TUlHOso6vX45mO5yIOvBiqi+zHOheZxK1N+4REMzKTPgDk9YbOQD9Yo9sYchf8gGs3KemTXGSs
	W7xPD0Lg4c3wWA0IZWB2C5BxqAID99Dw7RU0gLtk2yDsY22haYYh/6pcocans5oz513CAGuY2MoqV
	bhOf/mZvNO81k+keHL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQp-00000001Uu2-3Okt;
	Thu, 09 Jul 2026 08:48:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzXFS-000000071gW-1kwn
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 09:50:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62981GO4199406
	for <linux-rockchip@lists.infradead.org>; Mon, 9 Mar 2026 09:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZY1KMDG5mEhmybM9QUi64JQp3OjXLAuIqQxIS+L8bEE=; b=lhq0/5i+W9qNegQH
	4iZ2TDv+OYhkmoRgfhmxvPmWSlkpXEIuh5MZQgwo4AM3Ynv3hoJj/umUgQuspVVD
	tJNZB5kVcAKcswPNFCXiLK/XNzXJ6OQ01jnzIGffo+5jm0FuBezCFMl7vQ1REBci
	vtUsoJox3RcSzTnlFKMvPzBjnQX0elu+qzW3D0n+D/pjoeym9h1ZpLfUHM2r4mIc
	RgFO1UtlTnMC8hAPCyX8DNvS3m9eHukz0wUSD1RjkW6kWOUoS2dFLAPpsgq0xU9O
	biw8oZyeI+PGjkxkYiVbuyegRStV5PXmlXJIL/f7rskHcht0q+m+s4i4TrCa+wfe
	fPZ+4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc3vcu83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 09:50:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81be6f05so720625085a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 02:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773049800; x=1773654600; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZY1KMDG5mEhmybM9QUi64JQp3OjXLAuIqQxIS+L8bEE=;
        b=Wq1lCvMV4EsVn1iRvUCCTBRMtUh81OCDVEH4e2HYlV9xEEAvHHMM7KdeW81UDQSyKt
         qAbkliT3pTUjUM3USEcutJRz2d7+se34MEC6K9Gs3iGclmC5wseK5xPUS9yNjaClnNxL
         0+2dGGmihoutyXmhrej5BdZ0JbtaYixLL9sxWVaYJvXrmiaMPrOCQhTsiLBsXN0dMR16
         /wYUcawC1As6a2CN3HoNIlbnsTSdtbOFSKV5QJtGcxfvdPQkWuzji3qwUZhq8ktw7HmE
         TVHf6N55fgoV3R8m6QFf0UBo/r3GrHxpKuQierg5G/pnh27qUbO5szQ4DpcQBfwxhh19
         8tVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773049800; x=1773654600;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZY1KMDG5mEhmybM9QUi64JQp3OjXLAuIqQxIS+L8bEE=;
        b=Gz9NhzHbpxyM48BFZ6cl/01qhG7Ws6pR28hUgt6N4n10rjrWwe4Wo9qgWjynxh/6FE
         ovKuMQJbz8AS7wSQILR7jXUzvGRIAM0h7utk9HYBfvbRLDaLIThXmxGbE2IRbFmkgVUl
         L5qB+PtNoNkKSHGFQuMILjm6TMeQyyGKJjOy7Xnshe2PqjjE/cqA+1EWzb92GYLZ9nxe
         Krmi+36A+YIH1iUIbb5/HDp/BjOVkgUb6yhEoXKKgQkv18uWo2t89ht3HyYFQ6l0WEBC
         ZyWl1GnxQWdG6L05UaaUripf8AzA1ZV/YSnRDKPUN1qPRftVGaUdGNK6wx84BNjTgnYa
         Kn3A==
X-Forwarded-Encrypted: i=1; AJvYcCVY5isvfpLAp1WYB8oC6eetdlu8lIOEkpWp5O36Xt1wIL0MxHKIl5f2Raf3hJIfrhk5QqsDYqnPvAyt+ax/IQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBYRlKy57vsPtE6YfaQGeZ+ge/677rLtWMat8aGn21+u6OHNYh
	K3TNwYgTljoOqnrNfyq28MZvGn8nWRTTGaDvmphDHgNT9WEsnxOM2UHp0r+Zoc3Z+A7WtihKI8R
	QbJKf1vxcnHHjNK3UOkstzT03kGVuCLWUcSHbhf/aZ23SHdEHRfNKWDfTpYvlINKqT5FuLi/jIl
	c=
X-Gm-Gg: ATEYQzxOVzw/Jlhwl9zaNkh8D9/gc7vla0zovnPKE98Bx6jJz/vjPo+jDq8cvo9EFkK
	TKNtDVhnKD+OEyVNvDgAuDMmKhRNxXfyebPaKJF1svwvrl3UR2FGvANCTj/f5loT6dPfVqQ5Y1b
	fW79ySNoqpHDnmf202cGSksP/JRQ3iQGL6AWbb9M+PBmsx9spRu8axUQ2IjJRKw1c/B38bSkQaj
	Ly9pIvheiTwkewZGKwybgg4Bm0bzQbzUSsKRitUuWgdqARDDC2DdRq2k39myrqcfqMhn/BiYfn8
	/g3zVLFyAf8yk+zGYUaNcAv2jz9pKYv/+Q8PlsexCZv/pv+Ruvy3r3vHvNWNp0UNPxmnrlR+N3k
	aCqKJTcvQPBpJXOunLKmT+hPRpBC8yLZjEobTeeLApssmNZW3
X-Received: by 2002:a05:620a:470d:b0:8ca:d5cb:6841 with SMTP id af79cd13be357-8cd6d4a51a7mr1312876285a.49.1773049799857;
        Mon, 09 Mar 2026 02:49:59 -0700 (PDT)
X-Received: by 2002:a05:620a:470d:b0:8ca:d5cb:6841 with SMTP id af79cd13be357-8cd6d4a51a7mr1312873785a.49.1773049799331;
        Mon, 09 Mar 2026 02:49:59 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852f1964edsm58099595e9.13.2026.03.09.02.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 02:49:58 -0700 (PDT)
Message-ID: <3d78694a-6a20-4197-95bb-717ec74c0433@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 10:49:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v7 1/7] dt-bindings: net: qcom: document the
 ethqos device for SCMI-based systems
To: Bartosz Golaszewski <brgl@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
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
        Swathi K S <swathi.ks@samsung.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
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
References: <20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com>
 <20260306-qcom-sa8255p-emac-v7-1-d6a3013094b7@oss.qualcomm.com>
 <20260307-boisterous-tuscan-rat-1eb9bb@quoll>
 <CAMRc=MeeHP_ZjhOHu5NNLCU6Cg59EAWQAS0JngEHDQkmcDH3HQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <CAMRc=MeeHP_ZjhOHu5NNLCU6Cg59EAWQAS0JngEHDQkmcDH3HQ@mail.gmail.com>
X-Proofpoint-ORIG-GUID: XD-5yNWnpHhCTS5KwekjOxRTCshatzS7
X-Proofpoint-GUID: XD-5yNWnpHhCTS5KwekjOxRTCshatzS7
X-Authority-Analysis: v=2.4 cv=OOQqHCaB c=1 sm=1 tr=0 ts=69ae97c8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=P-IC7800AAAA:8 a=hmWrw1lzc97rlj7zVzYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA5MCBTYWx0ZWRfX77mBNX7IwC1G
 WYlf26amwqJQXh+erbPOCEJkDXQYmVQ19gQ1QtOX4y99M22yyoPh1oU0vrlO3SxRd9mpi772PJ3
 8a7nUes6EAatFbEaQVI0I6rQT1SeN+zpsuDeQI4FAj9JSFXJ3BUS4eNa+TQr5jUfOa6lAr8dMf+
 jwFdoV5l7ThlxzpN5B/oZTvPZIRHE1WRpJw6Ah5RiZWD9mzEWDaE2IR68TZOPrTvTHmGzJYejf6
 thHccsjp9h8ZwdGGRPUakCSjJ4PoDh2hTOUfHgTwzos5SEsbSQ8Sbj2MElFVJFTeD60zKTDWdI2
 k+FG2UINRERSXK918a3YKsad8qFWZyk77Dk4OWIM0V8FhdiWBt7DR4y2v6ZAD8Ucsl/Ob6h0bt1
 QSh4Ahgf1YpAxlBrvKq1pCCwaeOrOzQjTW97N2HXY5FMfuOINht2u+bT/Hgj1az9f74qWVaqw0t
 Bq7F+pKPqaybX0O/aig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_025002_588304_967205DD 
X-CRM114-Status: GOOD (  17.68  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDkvMDMvMjAyNiAwOTozOSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBPbiBTYXQs
IE1hciA3LCAyMDI2IGF0IDExOjI14oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPiB3cm90ZToKPj4KPj4gT24gRnJpLCBNYXIgMDYsIDIwMjYgYXQgMDQ6NDY6MzlQTSAr
MDEwMCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPj4+IEZyb206IEJhcnRvc3ogR29sYXN6
ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPj4+Cj4+PiBEZXNjcmliZSB0
aGUgZmlybXdhcmUtbWFuYWdlZCB2YXJpYW50IG9mIHRoZSBRQ29tIERlc2lnbldhcmUgTUFDLiBB
cyB0aGUKPj4+IHByb3BlcnRpZXMgaGVyZSBkaWZmZXIgYSBsb3QgZnJvbSB0aGUgSExPUy1tYW5h
Z2VkIHZhcmlhbnQsIGxldHMgcHV0IGl0Cj4+PiBpbiBhIHNlcGFyYXRlIGZpbGUuIFNpbmNlIHdl
IG5lZWQgdG8gdXBkYXRlIHRoZSBtYXhpbXVtIG51bWJlciBvZiBwb3dlcgo+Pj4gZG9tYWlucywg
bGV0J3MgdXBkYXRlIGV4aXN0aW5nIGJpbmRpbmdzIHJlZmVyZW5jaW5nIHRoZSB0b3AtbGV2ZWwK
Pj4+IHNucHMsZHdtYWMueWFtbCBhbmQgbGltaXQgdGhlaXIgbWF4SXRlbXMgZm9yIHBvd2VyLWRv
bWFpbnMgdG8gMS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
YXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4+PiBSZXZpZXdlZC1ieTogUm9tYWluIEdh
bnRvaXMgPHJvbWFpbi5nYW50b2lzQGJvb3RsaW4uY29tPiAjIEZvciBSWi9OMQo+Pgo+PiBDYW4g
d2UgZHJvcCBoYWxmLWJha2VkIHJldmlld3M/IFJldmlld2luZyBvbmx5IHRoYXQgcGllY2UgaXMg
bm90IGV2ZW4KPj4gcG9zc2libGUsIGJlY2F1c2UgaXQgbWFrZXMgbm8gc2Vuc2Ugb3V0c2lkZSBv
ZiBtYWluIGNoYW5nZSBjb250ZXh0LiBJT1csCj4+IGl0J3MgcG9pbnRsZXNzIHJldmlldyBvZiBu
b3RoaW5nLCBpZiB5b3UgZG8gbm90IGFjdHVhbGx5IHJldmlldyB0aGUgbWFpbgo+PiBjaGFuZ2Ug
aW1wYWN0aW5nIFJaL04xLgo+Pgo+IAo+IFRoaXMgaXMgdGhlIGZpcnN0IHRpbWUgSSdtIGhlYXJp
bmcgd2UgY2FuJ3QgcmV2aWV3IGluZGl2aWR1YWwgcGFydHMgb2YKPiBjaGFuZ2VzZXRzPyBJIHNl
ZSB5b3VyIHBvaW50IGFib3V0IHRoaXMgcGFydGljdWxhciBwYXRjaCBhbmQgdGhlIGZhY3QKCk9m
IGNvdXJzZSB5b3UgY2FuIHJldmlldy4gQW5kIHRoYXQgd2lsbCBiZSBBY2ssIG5vdCByZXZpZXdl
cidzIHN0YXRlbWVudApvZiBvdmVyc2lnaHQuCgo+IGl0IG9ubHkgbWFrZXMgc2Vuc2UgYXMgYSB3
aG9sZSBidXQgaXMgdGhpcyB0aGUgb2ZmaWNpYWwgcG9saWN5IGZvcgo+IHBhcnRzIG9mIGxhcmdl
ciBEVFMgcGF0Y2hlcz8KCgoiQWNrZWQtYnkuLi4uIHVzZXIgbWF5IG5vdCBoYXZlIGNhcnJpZWQg
b3V0IGEgdGVjaG5pY2FsIHJldmlldyBvZiB0aGUKcGF0Y2gseWV0IHRoZXkgbWF5IGJlIHNhdGlz
ZmllZCAuLi4iCgoiUmV2aWV3ZWQtYnk6LCBpbnN0ZWFkLCBpbmRpY2F0ZXMgdGhhdCB0aGUgcGF0
Y2ggaGFzIGJlZW4gcmV2aWV3ZWQgYW5kCmZvdW5kIGFjY2VwdGFibGUgYWNjb3JkaW5nIHRvIHRo
ZSBSZXZpZXdlcidzIFN0YXRlbWVudDoiCgpBYm92ZSBpbXBvcnRhbnQ6ICJUSEUgUEFUQ0giCgpJ
dCBpcyBub3QgInRoZSBwYXRjaCBvciBpdHMgcGFydHMiCgpGdXJ0aGVyOgoKIkkgc3RhdGUgdGhh
dDoKKGEpIEkgaGF2ZSBjYXJyaWVkIG91dCBhIHRlY2huaWNhbCByZXZpZXcgb2YgKnRoaXMqIHBh
dGNoIHRvIGV2YWx1YXRlCml0cyBhcHByb3ByaWF0ZW5lc3MgYW5kIHJlYWRpbmVzcyBmb3IgaW5j
bHVzaW9uIGludG8gIHRoZSBtYWlubGluZSBrZXJuZWwuIgoKQW5kIGZ1cnRoZXI6CgoiQSBSZXZp
ZXdlZC1ieSB0YWcgaXMgYSBzdGF0ZW1lbnQgb2Ygb3BpbmlvbiB0aGF0ICp0aGUgcGF0Y2gqIGlz
IGFuIgoKQW5kIHJlYWxseSwgcmVhbGx5IHJldmlld2luZyBvbmx5IFJlbmVzYXMgcGFydCBpbiB0
aGlzIHBhdGNoIGlzIE5PVCBhCnJldmlldy4gSXQgY2FyaWVzIHplcm8gbWVhbmluZyB3aGV0aGVy
IHRoaXMgcGF0Y2ggaXMgY29ycmVjdC4gSXQgY2FyaWVzCm9ubHkgYWNrbm93bGVkZ21lbnQgdGhh
dCBSZW5lc2FzIHBhcnQgc2VlbXMgZmluZSwgYnV0IGlmIG1haW4gYmluZGluZyBpcwp3cm9uZyBi
eSBtaXN0YWtlIChiZWNhdXNlIGl0IHdhcyB1bnJldmlld2VkKSwgdGhlbiBSZW5lc2FzIHBhcnQg
aXMgbm90CmZpbmUgZWl0aGVyLgoKSU9XLCBJIGJlbGlldmUsIHlvdSBjYW5ub3QgZ2l2ZSBhIGNv
cnJlY3QsICptZWFuaW5nZnVsKiByZXZpZXcgb2YgdGhpcwpiaW5kaW5nIHBhdGNoIHdpdGhvdXQg
cmV2aWV3aW5nIHRoZSByZWZlcmVuY2VkIHNjaGVtYS4KClRoYXQncyBub3QgYSBvZmZpY2lhbCBw
b3NpdGlvbiwgdGhhdCdzIG15IGludGVycHJldGF0aW9uIG9mIHN1Ym1pdHRpbmcKcGF0Y2hlcyBk
b2N1bWVudCBhbmQgbXkgZmVlbGluZyBvZiBsb2dpYyBiZWhpbmQgcGVyZm9ybWluZyBhbnkgcmV2
aWV3LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
