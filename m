Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB56C43602
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 10:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g03LUEDOY+d5WovJOCT3f61CnyEUGBFu5RoDIL1uZVg=; b=eJpChPnEGRHSqD
	8IbjBIv9gC0aJBhhRk+EGEx0aQQgH8OENxx5Og9DTCu7+JwOuFdeBWjq9EBIDDg2dEE12Xds3/i4P
	QTZHJJG5gMlb1T9fY4t3u8cuGA8TKn+CFp3Zq+r+c4p2FaQomeROfZJEbcvoJ3a7a87GdpFaWdelY
	AJ+37jzM1YeFK2PZG7qjvb3qqiBr2CZuZIypCe6lHccACG2cMfRB/dm6dieGcrZ2QwG6XMtx8LrQs
	M0rZ+3e9qV4MdHv7jsQBptkgN0CLEcSG4X+WWkUzdf6xvijXktA1nWSfrW6TnaQZlEOwZNdOt+vA9
	+bhfA19QtfLvdcq38lVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfath-00000006ZFM-02P5;
	Fri, 03 Jul 2026 10:13:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfate-00000006ZDf-3E7X
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 10:13:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663A2uQF3772703
	for <linux-rockchip@lists.infradead.org>; Fri, 3 Jul 2026 10:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6csOGuNQZW/8zcTpE9Z1FJS10bTlappWn1DYBCQO9LM=; b=dqgTkWJ6AwlZAOOG
	TZJpLI93qT8q5TY9jfKapyiPNDC9hTYfBrkRhQfXHKwLBwG2xzEy/g1PYCJBcaUU
	CTJYs9XdM10N1GTv0P4KQnQNQoOdn5DVhLhrTSUVE03KWI9HQEgv4/Jv6jOVsiyY
	4c1b2PrtQ9oMKYL/tAlxRh6TcM94/lIi+GmwRMAsIiH5dwgA/CK3fkX5PbnZTw0b
	OBpxzzyj5fCK8w7NNtHeRjrO/9tTtK1oC9IZdWvprYULOQOdVLu0aXf5uHpMdJuv
	9iTAKxyFVHLl0aDagEWjv/nIz/7L+TqQPjLRV8ArqCu6K537da52zC9trXoYOpYy
	To389A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6b0381d9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 10:13:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8f21e4e8b66so1109696d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 03:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783073601; x=1783678401; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6csOGuNQZW/8zcTpE9Z1FJS10bTlappWn1DYBCQO9LM=;
        b=QLpuevymarT06CwPwr5arE0CfsLk9QgzC2glZKViXTrw5FdWsk8fnbnfUN9vCfvR6p
         ORYMsI8SzaSmT52IvuFlwdb6nNmgjpSMhJF67kCvlhN2nifrgZHW5EyBDmhqdx07VyAu
         p+EsknJyagSxGflcB8vrORZIfJIpt7Y/TKygnlWBWgUbbC4jQ+cYke4C7CuLP5nBBQ7h
         2KlEUZZluAQcnWOawoPf/iEcKKMhLU22j8IibQkIoDayBuWMpF9NrzU18zErMDnpMBbb
         JNBPwh//wOBZsJkX/5qxr0QKpsGm94t6ezA7TqxiMKY9qVHmlyOl/gN9Ov9reT4mdK0+
         kcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783073601; x=1783678401;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6csOGuNQZW/8zcTpE9Z1FJS10bTlappWn1DYBCQO9LM=;
        b=KPWblH+ay8T3u1YqLoWSAc3jbtypnJSn5lWRpDyQtLc+KVYxz+Ro7/eF4cbjExz895
         jMh9JX2uyCnQsJ+bEInmA0ha+l71q8seLB9+bwzQ3ii3ALoh2PJlHJ2Bnj+xCv/zg9fo
         Aj5Eyx3HjpvXFl++jTU3GsKe1BGa/AODmNwX+8zuh0EZnOD1r5KkCqB8Esv3R3TTam24
         lLkdLLiJX8hPFf9IyoJdSZ75nApE+TnTP/OnW5+JNfyoZtzUAPG/y1HWWwhFgTr98k5M
         I5NShGq18dlZxN7/2onJw2FPXU17P6BX4PJsISu6miXRFdsvHDM9/JiONgS6WmbkSul+
         OLhA==
X-Forwarded-Encrypted: i=1; AHgh+RrijPe58v8Qbn0kLonWvHjh161/xgFxXLpx/3PPMHThE9h0aNDXGGNCYYcNsD75nRbc91WjyLTrPMqHWkJ2Mw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzRHmiQZt/yNU3h6r6qsml21I9YAIjKOVc5xfuSdSbdcvyQQCaK
	abldHaDnix9mDes4ARxyMkHvEn33X/7Sk1hVmqGfWyZVAznze7GXO1QqYrcnnLZAWwetEcxZnJy
	sYXJU35OtEKQt48VdchQa757PrIKBTYbyAGd33bTse2sdUfuG51VCdCXCE1WOwFRVFp+/yVgGef
	A=
X-Gm-Gg: AfdE7clerPlAlMvKrY4iFHLTWymexn0da4/MI7BsA8jSZFpXYG3NeYa0i/dkWjT9Tzu
	Txh7CeglHlfvZ3ih/GHpYIjiko0U2agiUZDlzLZqR7zzrCmKxc0Gp2mCEMC2fHnsjgBYI5RsSTw
	2h7lAaSHjlzmtACgIpTZ6tevxyTwsgLZNFR2fROZ9YMPqoYH1drqjZFgDQqeela2FTpujzjWRbQ
	r8wYqKbGj+e12dsD2XOafJSJDkPVa2Z/unVUub/U857oTOU57ILmt8C8XvyRIovtt1AMLR2zspR
	Tm9aVBwrIQc7aLZ8S9gX9JWmmxAWpO72iL2fO1U0I88w29Uv2CmP0IvQlm9g7WGfJlXw0MwlGB0
	UFJ+rNs8WTTluhEERGzCe3j22ej4yar9SLBQ=
X-Received: by 2002:a05:6214:cc8:b0:8ed:a980:6b27 with SMTP id 6a1803df08f44-8f3c854777cmr86121196d6.8.1783073601120;
        Fri, 03 Jul 2026 03:13:21 -0700 (PDT)
X-Received: by 2002:a05:6214:cc8:b0:8ed:a980:6b27 with SMTP id 6a1803df08f44-8f3c854777cmr86120726d6.8.1783073600643;
        Fri, 03 Jul 2026 03:13:20 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-698ad119406sm2158642a12.21.2026.07.03.03.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 03:13:19 -0700 (PDT)
Message-ID: <827c4b64-1881-4630-bb08-f9e2d97cd32e@oss.qualcomm.com>
Date: Fri, 3 Jul 2026 12:13:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Geert Uytterhoeven <geert@linux-m68k.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
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
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Radu Rendec <rrendec@redhat.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
 <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
 <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
 <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com>
 <akOZFIowVvprnAMf@vaman>
 <CAMRc=MfBcOhbj=ETxy2Xz9o_nyzykrEhKAc3jYi6V5_jMZEE3Q@mail.gmail.com>
 <CAMuHMdXNG=C=XcioQUEN1M7cQgKhO0AxUyg5X+TWb2rQ3-H3fw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMuHMdXNG=C=XcioQUEN1M7cQgKhO0AxUyg5X+TWb2rQ3-H3fw@mail.gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDA5OCBTYWx0ZWRfX/kcunJQVtP0Z
 C73hODyrz/R788QvCFiVxDGvNTSlRZZhfCbk8JVLhwkweqfxSwROrm0XOfdps8KgJ9fciroJfiS
 pdRl0rV3cHjTC6D1S8XX2e50CCD6rMo=
X-Proofpoint-GUID: RyplH-uRMfDB1gCJqc04MsxFd8jyluoQ
X-Authority-Analysis: v=2.4 cv=FoY1OWrq c=1 sm=1 tr=0 ts=6a478b41 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=lwt6xitBv4dyHUtHhEkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDA5OCBTYWx0ZWRfXxbI9U6HBi50+
 m1gfvV0zwwHC5yEAeUnQF7rL4wUN87YegZHhtzE2aEQ9zdZFzs3W/39FaqtOkNAha/ip+52pYS0
 BaKvTG6cNRe7vkC7uXf5cTCgiuxrdKiP1fPGMcMGS6owVsTS7upt57YwhxKvwU0CjzU3XoDxTDB
 zrM/QQQjGAiqQRmeEYe8ql0mwzqkGyA3XsglhRoIJuXMGmfpUzWtFO452mGVkU2tK5RZQBipFwS
 pwi1URVEh/4S44Bh1bZp7uiY7uTfyNRJX7QzQsErdY45H2nk5GKiYv/wnbYJq2Xp8IHMwvv/EcT
 u2o7m30NUAq0qBj4A9lRXwmGfrQ57xZSASwuwkOpr6sH29wQDBX0cUq4JAMpfZZVrug0dIbiaNq
 n725pFvtCl5IY1P0iXRWC9pgCVRqKKsjCWVX/aeHO0NvCH5LnEdratPmmMg35BIJNY6MKxkyd9t
 WXOO4ZKGCTbm7hwLDVg==
X-Proofpoint-ORIG-GUID: RyplH-uRMfDB1gCJqc04MsxFd8jyluoQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_031322_917312_301B259C 
X-CRM114-Status: GOOD (  18.27  )
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

On 7/2/26 11:16 AM, Geert Uytterhoeven wrote:
> Hi Bartosz,
> 
> On Thu, 2 Jul 2026 at 11:12, Bartosz Golaszewski <brgl@kernel.org> wrote:
>> On Tue, 30 Jun 2026 12:23:16 +0200, Vinod Koul <vkoul@kernel.org> said:
>>> On 29-06-26, 16:51, Geert Uytterhoeven wrote:
>>>>> Russell King asked me to put the PHY logic for SCMI pm domains into the PHY
>>>>> driver instead of the MAC driver where it was previously. Instead of cramming
>>>>> both HLOS and firmware handling into the same driver, I figured it makes more
>>>>> sense to have a dedicated, cleaner driver as the two share very little code (if
>>>>> any).
>>>>
>>>> I think you are mixing up DT bindings and driver implementation?
>>>
>>> Should the bindings change if we have different driver and firmware
>>> implementations? Isn't binding supposed to be agnostic of
>>> implementations..?
>>
>> I've thought about it some more and I believe this question is philosophical in
>> nature.
>>
>> sa8775p and sa8255p are *the same* hardware. I can flash different firmware on
>> the same Lemans Ride board and it becomes one or the other. Yet they are not
>> described by the same DTS and the bindings differ as well. I don't see why we
>> wouldn't allow the same approach for the this PHY.
>>
>> We treat it as different HW variant when it's managed by firmware - just like
>> we do with the rest of the SoC.
> 
> DT describes hardware, not software policy.

DT describes hardware, to the extent that it's accessible by the OS

In this case, lemans-bare-metal and lemans-auto are essentially 2
separate platforms because the way we can interface with the hardware
is so vastly different

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
