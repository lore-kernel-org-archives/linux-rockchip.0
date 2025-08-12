Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB5FCCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPLDriJIeQPQtDM8FhSumrdHVNYOkqjTJPxLCbLrHyQ=; b=YY2e8tcXxUygiD
	a9Etkr7Z9465iug6yNWyvJIhYwGKIXMhTRBLqyya/Y+GNbebyoPvxmvLlPxEy4+SkzY7hDjzjHE7f
	WhnYPQhKkXgMVpiZ/NqYnHJYusZnzS/g2wwuxO1horRTw/eZsUYmsY5ZqLCz0oFHYc+ijZe9oNjQP
	7V092RMl4pLluQmOm1Tb33ujpv8dtkHh18J6lBi5yDWe9P2LIdY7cHJqOpPhm+P/UVLIYMALO5djD
	9yq4NurKI9HTKgOw+Cn+bY7hpC5qUCXA/m7B/QBE8j8WpnyUgOmz+xnbxpui6KnOqPlTzbTXuTfmW
	TMyt1ivCRcDZpv+2SSvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAobK-0000000DGOP-2RG2;
	Mon, 20 Oct 2025 12:02:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ull5B-0000000ALMP-3W36
	for linux-rockchip@bombadil.infradead.org;
	Tue, 12 Aug 2025 09:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TcdYyVsr8u2xyDR+M+UHLCKM6ilDd8iFcrZx6NwCMNw=; b=gH06rEvTqE6okH6N2nGD5bovHx
	C1shDqjkRPsdOn+KKzARm7GuKPxmBiOp8jNE/PvU47KNJZ2Dz2JT+tJoMDWb8Z/x3VKfPQsG3+Qr9
	MuD/BbbNM9uIndh/iDG7SMNg9PdMC+IuehxGceOURNNv77uz6WwudXnaaT50oHmnLHm3ufcvbUdTh
	MfZWVkXI81NARX9gR1BuAN/NrPDLnxVCxoPsf/efUqF2ZXeRL/2ZndNa1VhQ+DjglG2OeY4IhN3aj
	6da3n7mLkzS4UoSjIyQDNo71yJj0tJEd1iGRFMOtsPKIH7Tm7DnSJlulsmJC0QuHtOLz1Gx2Bucx6
	zQWLrk4Q==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ull57-0000000FlpU-0mXz
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 09:14:12 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5XJBP021432
	for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 09:14:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TcdYyVsr8u2xyDR+M+UHLCKM6ilDd8iFcrZx6NwCMNw=; b=IhtfSRQ2YMp3r9Qb
	QTBakXU39kXnh3NAEBJK+jxPUhNti+qh2TnSA3O6FuXxZMFWJ92mtfpgaYuzpKlM
	79O6emmm+ijVk/GZsDz+7Y0utYD8xhI/HE1GcmNUUDbYPwtTK/pqvfAvkX1MCHXt
	zLgnT0FMJcu8wg830X801jUiQpgV5Zh9XqCh+ADbELn2FnOS9gICrZzQd5ELXDqc
	JMuHjW+zNFuPoGB+sR9PNb5guLJaT/oSku8iZRr5nqLYWea9Y4dIfvAon+7aBHnw
	WWDckRpDvB5IABisZYJyWOoePRF2XmOtgsNh7HDAjsCYrKKntzAOspkZicbfU5RC
	7W6NDg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vjdup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 09:14:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7092a001573so18114396d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 02:14:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990044; x=1755594844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TcdYyVsr8u2xyDR+M+UHLCKM6ilDd8iFcrZx6NwCMNw=;
        b=SoIqMFQUsIvVcKQcxtqb9GvQZ23loHEkkEEg1SfFddQKn0AuR0QEQWrh9hdyuUDQTp
         eJua0lEAVrIkiEHyQtdIgLz51P85/nVWRLJ04MBWLxn9IH2BaJt4GE5mMaFM+2UplpeD
         DDMOrUmQJ2rMjVzUUBbleZOJz3qDYqIHp4JIpaOo+E8Sl0x/Olk+G9SKsIwODMlTyuBN
         J3ZHe/sqZgGRh2pgC5qe8rRyvcLG2x9sF+9a18H+lSqD1PCCYNI61OfAjkIV+TCDZV37
         C8zERAMlLFeu9kCC3Bd09DkMz5U90CWwSiOCzw1F0vgTvBguQAS/Xy04ybIFsuEv4iYb
         pXMw==
X-Forwarded-Encrypted: i=1; AJvYcCV3geXH0fTRPavnFal5w4vgKHzjffwF0u79Sogd5y8OkcIIOCo25XZG+4iOaZWEqg7dtm1Fdbu/7bfUAscEWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YySKeR4Ng3dFFNqRGceya2fnbuxwSyyufDiA4rfB+0NPDmexwXy
	ZrQDlYiFL7I0yQKOEaCOyMvvNc7QISxyeABNR+yjfv+yzgCMKCKdFHSNGpGwh77gB6D2zlqxVQK
	y7gSfFroXAfuOR77egKe1sliF+7ocE9NOXYH0Y5vQOH8hfMh2REsoF+xzEUhrjFKZBQb1LZRF1j
	k=
X-Gm-Gg: ASbGncshuU7JZjUsTa7l0EBZKEOsgD6YL6o6jwFPSsy17BfFFjyvURNebVH1SF0mK7b
	15VyU4nXKcXJ/kBbZyrgG2rRud2/Vk+iOU5XW7lpqtvXTNJwp+PNxgwrhUsrQkJdghSeFJQ94TR
	4j82mOTUleerVLj8WdIn8aSoYxY+C03xuMgpVhteYo6zisMwYlz/diyZHFaF46xO87JzMkjp1eB
	0bAz0UhgODE3Z8MFnYGbCFENkGKJMquLAnn115G5tGYgAfMlpEGf2VWS0EMza3siktqSMfBKeDv
	lPL4Fdaysh/1rXijn7XxrY5j/s5hVbXUeISISly2hKsbNDZxwKaokXO9RI2cxw4m1/Lt8tO+qo0
	RGD8xTd48BuoKu1854A==
X-Received: by 2002:a05:620a:462b:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e860096e15mr26715485a.0.1754990044271;
        Tue, 12 Aug 2025 02:14:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIPCXaPbFG7yAsR8pzw0t16fLvywO1iDk8kuIeOO1bInlVQuLKav0rw2YYkObsTH0QGuYx8w==
X-Received: by 2002:a05:620a:462b:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e860096e15mr26705885a.0.1754990043559;
        Tue, 12 Aug 2025 02:14:03 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a1251sm2177380166b.30.2025.08.12.02.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 02:14:02 -0700 (PDT)
Message-ID: <90f4eaaf-2513-4479-8647-b855a72e0e65@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:13:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 090/114] clk: qcom: alpha-pll: convert from round_rate()
 to determine_rate()
To: bmasney@redhat.com, Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Paul Cercueil <paul@crapouillou.net>,
        Keguang Zhang
 <keguang.zhang@gmail.com>,
        Taichi Sugaya <sugaya.taichi@socionext.com>,
        Takao Orito <orito.takao@socionext.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>,
        Shan-Chun Hung <schung@nuvoton.com>, Vladimir Zapolskiy <vz@mleia.com>,
        Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Samuel Holland <samuel.holland@sifive.com>,
        Yixun Lan <dlan@gentoo.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang
 <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Michal Simek <michal.simek@amd.com>,
        Maxime Ripard <mripard@kernel.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>, Sven Peter <sven@kernel.org>,
        Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Neal Gompa <neal@gompa.dev>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
        Max Filippov <jcmvbkbc@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Daniel Palmer <daniel@thingy.jp>,
        Romain Perier <romain.perier@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrea della Porta
 <andrea.porta@suse.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Alex Helms <alexander.helms.jy@renesas.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        sophgo@lists.linux.dev, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-riscv@lists.infradead.org,
        spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com,
        patches@opensource.cirrus.com, linux-actions@lists.infradead.org,
        asahi@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        soc@lists.linux.dev
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
 <20250811-clk-for-stephen-round-rate-v1-90-b3bf97b038dc@redhat.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250811-clk-for-stephen-round-rate-v1-90-b3bf97b038dc@redhat.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX1xErEDcNglfl
 gqfL0aZmmO0GY2cwNpVUn0hAj/aQ6pLMKm7QwO/MGcObCHN3g/FFIFYF6w8kYgIxYMKjC8ItgYL
 9fgoVrAclBAIuTsFNSBb4AWmd9mMPs5eXq/gU63B0r6vZaMV8vgnobPu2oOeZLGGvokdGpw7BPP
 lvwuXGoJMUBhlrZuWrrK+yKxnd3QSDTmkgmLJi3CzYDoJ3TrLTqYMgEy5Wq+T0FBAqNwwhwH/xa
 EDlnLeCto/9Kh6B9wjC187H2bo8yT5wYkqeJxiMNTJMCAtfUkudq0lmet9yYoO1o2MjOkqveqtT
 Gx3LKCoiq2J5YhRD5V8vjpwEkctjTOqTt894mO3oQSiH2i+TNYXqR3EI92/Jd60sN5QoP+LnVn7
 vGtUk1VQ
X-Proofpoint-GUID: lgOtFrS1BD0aLaUG7Glp4gk9cETDPqXS
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689b05dd cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=20KFwNOVAAAA:8 a=EUspDBNiAAAA:8
 a=42SW9st40EnfI9Ma3XoA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: lgOtFrS1BD0aLaUG7Glp4gk9cETDPqXS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_101409_749026_52884A03 
X-CRM114-Status: GOOD (  14.93  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:57 -0700
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

On 8/11/25 5:19 PM, Brian Masney via B4 Relay wrote:
> From: Brian Masney <bmasney@redhat.com>
> 
> The round_rate() clk ops is deprecated, so migrate this driver from
> round_rate() to determine_rate() using the Coccinelle semantic patch
> on the cover letter of this series.
> 
> Note that prior to running the Coccinelle,
> clk_alpha_pll_postdiv_round_ro_rate() was renamed to
> clk_alpha_pll_postdiv_ro_round_rate().
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> ---

[...]

> +	req->rate = DIV_ROUND_UP_ULL((u64) req->best_parent_rate, div);

space after typecast is 'eeeh'

but the rest looks good

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
