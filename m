Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F69FECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 21:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD+MZaNKXbZ/Sj9U98A4f6i95mMtIMm7PEOcwW9GZbA=; b=xvx65xTreS+aOt
	vBdTx2TaYwF2tD/Ihr0EkEJw2fNQ0oGMhZ65MFz7hljOAZuReTCy1WEv1ZNNOm+CvufgTLw+PM0kU
	4S3iXo/pFxyi1PoCM8LYnWFz2SgxhMPjvtmt3Vb6KIMkiKx1Hw8JZ1WnBsbR5ZgnUOWoWElRTmZbV
	vjNNOgO+LMoxihA/12KaltwG60BMpwMuIj4nPPlz/lGHBTSHib4+unxONb+A/ccQqjBzVzHV0ElB5
	kZGylVWccC10Ygoqqh1xUYj/81lq95fftq2b4iG8SnTXE+09/yARRDKbvmKWkfvLWy2dgTZWisAto
	C+HtcwOfGmSLtSDT7Qpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVJD4-00Cpav-Ki; Mon, 05 Sep 2022 21:00:46 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVJCl-00CnfM-Is; Mon, 05 Sep 2022 21:00:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 9CD2A5C014E;
	Mon,  5 Sep 2022 17:00:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 05 Sep 2022 17:00:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1662411626; x=1662498026; bh=ShSceNjCXY
	gqlgBupuWbsBOM3+5FczhjpSjrgN/tPBw=; b=hV+tg69dqWA+xmw0VuLGZ1wS0j
	LQS9f5DNqUhkgxKBz+hC4abYW044ziml/s3nMwukDJtO3I9VJrR5YjyqQO00+zzc
	B4nAPJ2JdDQoYLns+9oEB+RdSeunz/6dgLqIXBHjDV8wJx+casJ1pXJzGnrWFZAX
	0uGnmPjNmhsisd3fqgTerkPAnDvDMgeSESqK235TN4kdGahU1RHUAS1T7xvjdPDQ
	7TpAw6hRXo3YTHwVWK8YyDz+yR6itswAyyGStnN7s9Qq07kgmiozrIO9BhoKtnJc
	5+S9aQl3U9mU+05CAfvNc0yKBSymjIa0ArQ6+rsO2TRmpFWHEQWKx+dOge9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1662411626; x=
	1662498026; bh=ShSceNjCXYgqlgBupuWbsBOM3+5FczhjpSjrgN/tPBw=; b=S
	9RJDP3Hv+KNNm5TY/9KO/XrA/LX9KcuR8CqQ56bQrp5jezsc3g9RZLBUg3ZMamK0
	ssE3PqG1UcUC/ZHvdUBOBxYOngmxzkiNzyBQyvFfCUtahNFpmD2l5ZFlUzUzHJLO
	zCUmoo6TWFIAYydqVd2MEw2zEOm3VKnoBr121ZFXPNnFYsOQvH4PRofb0WhAEPxf
	j5sEhGiOc2Xiveji53eMfeqXGZfLbk4vTZpfoacAGClEVibuLhM251yX7Ha17j0z
	QZZnXoK/rTmYxMdGx1mOHKNCIBo85sCRFh+90+pHVc1yB8fR6m8nzFkMNn22fgyr
	ml7oCiGrgkNJkO8BJrFAg==
X-ME-Sender: <xms:amMWYxBWSgoM0nwamImilLGxTpw6eSDy_u980l9tIMY2gn-tvtCUrQ>
    <xme:amMWY_ggr6mXUa6jBwVnafTdkQGicI049q1H-LpJbXBCUB5U2YKyy5TsGtv2RHcNR
    RkPL-YJ6fsAsg4QOg>
X-ME-Received: <xmr:amMWY8kxMAOMFMw2tbIDDKUREQ9ZdpctmP-CrDdOvbxgX7RSg0lfUCleYYYUgRUv1GaJo7oyZUrzBrELCELUnLGL>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeliedgudeiudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfvvehfhffujggtgfesthejredttdefjeenucfhrhhomhepvfho
    mhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruh
    hkqeenucggtffrrghtthgvrhhnpeetudelveejvdffjeevvdelvdffhefgueefgedtffev
    geevudfgieegleeikeetudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:amMWY7w0byClwP9hCHFbHd6qSpM6iWzqgixAGov07PjC7IILgYwYfA>
    <xmx:amMWY2QgTpojgUbCpgRzunuPhiv4B-J422HEbei2lHllaCGg8r6kxA>
    <xmx:amMWY-Y-dPng0Dj4D3q4oHwz3oo-GoAJMSwDlRuGEfStZjzBYQm2sg>
    <xmx:amMWY7KTzYdu8qq6Oke_X22ea1wf5IjO3fpQIl3ixJmHwvBi-VpIiA>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Sep 2022 17:00:23 -0400 (EDT)
Message-ID: <1da905ff-482e-2d78-ec5d-3c2f9c99f613@tom-fitzhenry.me.uk>
Date: Tue, 6 Sep 2022 07:00:22 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: phone-devel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20220829050040.17330-1-tom@tom-fitzhenry.me.uk>
 <166231195330.2423948.5394487959576836993.b4-ty@sntech.de>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: Re: [PATCH v5 0/1] Add support for the Pine64 PinePhone Pro phone
In-Reply-To: <166231195330.2423948.5394487959576836993.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_140027_741326_69800BEA 
X-CRM114-Status: GOOD (  13.44  )
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

On 5/9/22 03:22, Heiko Stuebner wrote:
> On Mon, 29 Aug 2022 15:00:39 +1000, Tom Fitzhenry wrote:
>> PinePhone Pro is a RK3399 based phone produced by Pine64.
>>
>> Add a basic DTS for it. This is a working base that will allow myself and
>> others to add more nodes.
>>
>> Relies on "dt-bindings: arm: rockchip: Add PinePhone Pro bindings"[0].
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro
>        commit: 78a21c7d59520e72ebea667fe8745a4371d9fe86
> 
> 
> Why was the dt-binding addition missing?
> I've pulled the binding from v3 now.
> 
> While it is true that you should not resend patches just to add Acks,
> when re-sending a whole series that includes other changes it's still
> necessary to keep all patches together ;-)

Ah, I had misinterpreted previous advice on when it was necessary to 
repost patches.

I did wonder how maintainers would then discover the set of patches, and 
so included the "Relies on [..." text above.

I will ensure patch series are complete in future.

Thanks for your patience and review! :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
