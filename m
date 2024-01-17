Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCDBAC47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2236JlWygCnMHakMIEEL2O+h0mFK44KHD7vZ6opvI8=; b=kL/+/62kwvmqo4
	RW6pLxsH2LZYWi6Y8TmnBFcYhj/CB39zguF6g5LLE64TnDxfifA3LL77eOlHlUfEXCBegr7wd8yfg
	gremtmhK+cJ32omzvS92UQ1RIx++UbTW5o4X7+ECtpOW4fxOUD4hHy3iqNFxpz+ajEKm26BbtZqSl
	yYqwRYfzFF1Cg7iYwwoDsYQHV+ZGZ5J9kMbm/GhZv0s1fDKavrvwpDEwDo5qBmIi9c+XfNqEgwsYN
	5os1223+k7M3lnZ8jD+O98mhKR1zCzsCLQ9Dj8DJjekQ5NPqhmzcXGxI6cIuhQ0dJh0KcwOB3QO3C
	vCtju0t9BBLJZ/ILuaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2FC-00F5rX-01;
	Wed, 17 Jan 2024 09:29:58 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2F7-00F5pC-28;
	Wed, 17 Jan 2024 09:29:54 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id C74D15C0035;
	Wed, 17 Jan 2024 04:29:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 17 Jan 2024 04:29:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705483792; x=1705570192; bh=QSUhYk2iu/3Pt17e2A9ZFtKpXoLCRx/I
	Nowv2VVp7F0=; b=ilMqJwVOTCaUXiOCJCLTERMo7s+WGjY250Srh0NceOwj9wKu
	zXlmbwokL2pJE+MQXwFt4gHYe6K9yeqQJJOP3AHdzqSRxMdEwp7Hpf+rKF8UsKqQ
	C8shGgQg2U76560aT6MEE/p21d7Tqc/MINVsipjhr822A9eAoRH8Dxhnn9MpT9SM
	Np9a+czeQ0AxzR+PCSvXpTpwSby6T/zzcl6iJJ6djJsPmIFs0az0+hYg1tlu8rO7
	4n4IGQhzxgNN920enN0i2sASVW2QrgUwTTlkktINZrlRDuhDHmSQWkFOXg374tVp
	KsuOpAWs2p0qf2djo+lsgKnTQNZLj3/KxBOjJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705483792; x=
	1705570192; bh=QSUhYk2iu/3Pt17e2A9ZFtKpXoLCRx/INowv2VVp7F0=; b=j
	PFVY1oxF9Ykyht36z3Pwgc58JOy1r2FKh5RTCEvd/skZh1koBskJN3p3+aEEymLe
	LTDQp2z+godBWjFDFAdeUEdctbF2UirMbv1LnMO995EAXgRyBXoH7+5s3pQHzSVE
	ONF/klHXYCoqtTjEs+bB9iOhbtPP+A5gDEXGC3J/w65W11cObQwsUyk4GhJ2CIFu
	qu4wghy6zDyGUn7sb4jxChBBSqttSBPMLkLL8K1yI2WhEhBy0lAk/mUEI5HnAim8
	mmSDzUSKMzbaQrm2dQ8Zx1t6+bmwrvhXEKll0edHHiAKpCkxzs9gWAV2W1VOZo2p
	NZhms5jsW5w/9dJhubnIw==
X-ME-Sender: <xms:EJ6nZeAb64Dqgmn7qkJ4K_Mly5keCS0qsE4vFIx6LLQYqWuclFqucA>
    <xme:EJ6nZYg6nFkfdEZyLmFyFQ3PLwm7fmBHoBszH_oAq2b7NScVpi8iwc9YjXnmlFtiU
    8Bscs3ReQ>
X-ME-Received: <xmr:EJ6nZRl022CugEn3Bepz7pK0-JptxR12Jhq45pS53_4JRRT8_B5V5x2e03fjTrZffMo5eT1v-yXmkYU7A54EHXpaf7xi-PFgk4GzUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepheehgfelhfffgeefkefgjeelkeduleefvefhgfekgfetfeetvdeigeekjedvffeh
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:EJ6nZcxQrmGzfP-MabbU2yGr6J6uoh3PRXutfAU6We9sr1Y47s5hFQ>
    <xmx:EJ6nZTRzI9TMME48-SZoGrt8dpk842uYP0f9L7o3OoJ5n4rHzvGerg>
    <xmx:EJ6nZXZhb_kabZJR9pETnEVn1SQj0fBFnyoYVqE2e3ytOuVmC3z4oA>
    <xmx:EJ6nZYI63WcsNZzvs5yXne4jOo6peWDk79UDGCs_A1P6lt5SvUClnw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 04:29:48 -0500 (EST)
Message-ID: <5cfba450-eb5c-42d8-b422-52610d34effc@feathertop.org>
Date: Wed, 17 Jan 2024 20:29:46 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: rk809 fix existing example
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-3-tim@feathertop.org>
 <20240116-flick-ungraded-b36f8db15dcc@spud>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240116-flick-ungraded-b36f8db15dcc@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_012953_768167_A357AD2F 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 1/17/24 04:07, Conor Dooley wrote:
> On Wed, Jan 17, 2024 at 12:21:01AM +1100, Tim Lunn wrote:
>> Fix typo in the example specifying wrong compatible string for rk809.
>> Remove additional vccX-supply properties that dont exist on rk809.
>>
>> Signed-off-by: Tim Lunn <tim@feathertop.org>
Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> A fixes tag would be nice too I suppose. Not worth resending for IMO
> since b4 will pick it up if you reply with one.
>
> Thanks,
> Conor.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
