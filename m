Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57350C00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 07:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h8HSysrWc+e2nKFALU0E5eZ8lRkxzPmBSgA6OlPXQo=; b=sV/Xjrowo6QxNe
	ZAn3obHywCvXE4S00JSUXizp+f0vOf4LpOTXlBdKoGSDb2YRYhaaccsrHII4tGL6J80aJCaWDPclE
	3BFr1zKaBjM0Ia5h0MGNLlhCvkEvVBRriqkJnvvDeitn0x54V7oU1vpNGzQLuQhWaFVGyhd2k+45G
	qo3rmskc6Gc4qRS9rDmv/pAE3y61k6U5vqcqVfWwGyHR922MVLEqp77+m2G3qGFr16z8pTrj2A2Ku
	HtagJMhsRCMgOpVLegYnqerqzT7R55qXzFESCG2cpVCrK0Rp5F+veTLStwT/ColRrN+7DdMAjQWqN
	fnV+eNGWjgFc+D5TinZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKx7n-00C6f0-Qn; Mon, 08 Aug 2022 07:24:31 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKx7c-00C6Ze-CP; Mon, 08 Aug 2022 07:24:22 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 8BCC25C010C;
	Mon,  8 Aug 2022 03:24:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 08 Aug 2022 03:24:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1659943453; x=1660029853; bh=cfXKwT2L2W
	iIMULrPjrMghFNOd45gLJ8rGZDCFh9GPU=; b=Yxus/l2iuHs/pwJkTM5C2gwHgL
	UrFT8YFfm0lEgdIxeujotqg9e211oeMqw1iTPt5eHJtNmiPbXkSMkhP/M/d0xfi6
	32BnX5MwKINQ299Z8EjoTH6Qo3uzAL0yQNp+CL4BbmnNFAOXgHIViwQ5gzHIOoFX
	rF7EnTDAwwNOaHb84ds/aatwnUJbYCz195mKMxTNc5lYvYPoQ5WRYjUIGb5vrzPR
	ApqgH/sU3iRE1hWJNfsTenoVwRKCK7Su48oHa5v5j9d9Uhe78DsDb/T75T9+ex+i
	HHL0mcmZmUCZ4Nm+Qh30R5dDDMtRNwrhZJc48gwZNfBUfGOdh22iID48qFmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1659943453; x=
	1660029853; bh=cfXKwT2L2WiIMULrPjrMghFNOd45gLJ8rGZDCFh9GPU=; b=C
	rxpsC7Yb13DKjBueJjjiYgKO9XsT4cFdLaILTPN9er+gboMsVHqfCnn75oteoJ+S
	o/vx5xd+du0zwxLCdEypAheFShKgLZnt+JDEv+f6oa72sctaqGXwK/2zYcONNon6
	j6Wx2iaq7KFZu95Saeyodpd0OjEL1F6LZl9vf0milcS83keP3RQZrZdL8Gw+/5yT
	Y4yEXkbeH/BtHDIQX7d26knJtwWbtL5HZQYxP5cRhSK4qTLrvrsjfQIkMPAa9o3m
	kARXmoETQ8437f9GxYStnZ5/wLSruPIhWZbFpelZHkC+P53UtSTWQWHRCuRtTO/4
	fqXn/kXl9z3IiifxQceOA==
X-ME-Sender: <xms:HLrwYgB62IxBquFN-LI7ebW5i4FFdTztOfuh0HaW8NSspyWZpEjPuw>
    <xme:HLrwYigOvjW2NutFojZXfH8WkDUJjggmUe3GFBbDziAH37yE1U9TL0ISfLfKQ9DaW
    IC2kqxmqmCljPQDkw>
X-ME-Received: <xmr:HLrwYjlP5FbLSr5uzkG5xcYlRZ8aWT0Qn_Mc8M2aRIdWxzsTyILkPAqt3ww7LZQTk6ZzRTWtfrHNS4Ppx2Vn4tVk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdefjedguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfuvfevfhfhjggtgfesthejredttdefjeenucfhrhhomhepvfho
    mhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruh
    hkqeenucggtffrrghtthgvrhhnpedvgeehhefhtdffuddvtddvhfdtudeuhfejhfetvdeg
    teelfeduheejfefgtdekieenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhomhesthhomhdq
    fhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:HLrwYmxd0tnTDdadZDzkGmBfDKfDMsTa--QtOxp2g_Sf5pmicu5WTg>
    <xmx:HLrwYlSTVMIk-abDMxsck8i9-PWeQDPDlSQYUn8mKDKLeVkXPp6Rdw>
    <xmx:HLrwYhbPtuQaSXKNA5d6fjfQhWw6Z7kzi2QeGU_hCZ6yLJ5q42VUVQ>
    <xmx:HbrwYhqO5YY-HidK0Q7p-sb0UFfuB3VhDqvkkKDlxA43D4sOz_Zvdg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 8 Aug 2022 03:24:09 -0400 (EDT)
Message-ID: <88cea6f0-c76a-a1e6-48bf-1c0598df4df6@tom-fitzhenry.me.uk>
Date: Mon, 8 Aug 2022 17:24:06 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Caleb Connolly <kc@postmarketos.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: megi@xff.cz, martijn@brixit.nl, ayufan@ayufan.eu,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
 <f9cbc047-f30f-e711-3213-56fcbb7bbc8a@postmarketos.org>
 <9a168a20-1fd1-5d73-1d33-bd2f054d60d7@tom-fitzhenry.me.uk>
 <cf320916-c88b-0c4a-7515-24318f1b85b2@linaro.org>
Content-Language: en-US
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <cf320916-c88b-0c4a-7515-24318f1b85b2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_002421_037109_4A0C17D5 
X-CRM114-Status: UNSURE (   8.53  )
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

On 8/8/22 16:38, Krzysztof Kozlowski wrote:
>> I agree authorship is important, and thus Kamil, Martijn and Megi are
>> listed as Co-developed-by in this patch.
> 
> But you miss their SoB... Without them you should not send it. It does
> not pass checkpatch, does it?

Sorry, my bad. I see 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html 
lists to use checkpatch. I had read this but had since forgotten. I will 
ensure future patches pass checkpatch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
