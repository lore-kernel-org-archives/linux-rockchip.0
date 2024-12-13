Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1768EE7717D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 15:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SU0e72VYLU931Y7umxkRaGdFL11MCi1dAPMuj/MSa6o=; b=IGbAB3S7/qVQIx
	ITuMTJyg+pgGM39CYqCidGsknBwWf4WIwBRztnfl1GCAui5+G2583eCG1kS76luQEeKbuqw2eosBh
	O3mLAL2wRFuV7euauNaAUrsl8bPcMNIyV4JS++QCv3LcdgW1QPVyjS3jMbSEMrYrV27lBfL5SmBQP
	alcFJMlwLesCfoQiLTX6r8rXWeBOe93wUKtFZIl+RZqTwonL+sARvh2OZ1JPEUy4ZG1MxBdBwqMiM
	RiJZ2PBNAqS9A6cEvuPR0A5yl9MmFS90bh5cCv/fSMKbiaePjXi0YJ9HZo9sf26K9Bnr3+Dwa1RT5
	0GwgFXRC17zst/qabMoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7J0-00000004E9U-2z0O;
	Fri, 13 Dec 2024 15:10:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Iy-00000004E88-28Km
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 15:10:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A11685C6C69;
	Fri, 13 Dec 2024 15:09:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04B49C4CED2;
	Fri, 13 Dec 2024 15:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734102611;
	bh=pu7CV/W001EZcdH5bxBKbdu6/xFC5CpjJ1xPFnY9AB4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZH2HMLXhf+HaXkVd4g7VWSnt05dxkfUUn6CE7dA1EwwNwzB+7o1duGdBiPY2HHRM7
	 CBGaC4Nl03QUmtvpXohss4cpoqmS2Vc0RO7+jxY5qetSMDg40U7ni1Flrn8kNJ8Ilo
	 VxVXjlKmgNODyDYW2e1pYikP0Wu7I7UmfHcjXO6BvC5sx8ZSNncjzl+74W8uFHZI30
	 kiIappyHpwF9T0dw8QRDra2c8fA9YmotkxmoZf5Y7ZpoqmGSokhNsWFaMF2P9TDHq2
	 7sMMp2nE8ahRWbLF80Z+wS9zwoLKu/WfoNGLRJnfEJoEqxOHzG/Xa8UkuxwloU7PE1
	 j8wVejcH2qC1g==
Message-ID: <ca3f43f8-f96a-4d2b-9273-a4d936fab6a6@kernel.org>
Date: Fri, 13 Dec 2024 16:10:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] [Draft] dt-bindings: arm: rockchip: Add Firefly
 ITX-3588J board
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <c1b662d8-6470-49f2-a904-139a33061885@kernel.org>
 <20241213150225.3538-1-shimrrashai@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241213150225.3538-1-shimrrashai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_071012_649880_345670FE 
X-CRM114-Status: GOOD (  31.47  )
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

On 13/12/2024 16:02, Shimrra Shai wrote:
> On 2024-12-13, Krzysztof Kozlowski wrote:
> 
>> Explain why this is draft, what does it even mean. Do you expect any
>> review or not?
> 
> Correct. As I pointed out, not 100% of things work.
> 
>> Please run scripts/checkpatch.pl and fix reported warnings. Then please
>> run `scripts/checkpatch.pl --strict` and (probably) fix more warnings.
>> Some warnings can be ignored, especially from --strict run, but the code
>> here looks like it needs a fix. Feel free to get in touch if the warning
>> is not clear.
> 
> I did this, but I do not see any warnings beyond
> 
> "Prefer a maximum 75 chars per line (possible unwrapped commit
> description?)"
> 
> for the 0th patch, which does not seem to be from the description and
> 
> "Missing commit description - Add an appropriate one"
> 
> for the others, and
> 
> "added, moved or deleted file(s), does MAINTAINERS need updating?"
> 
> on the 1st.
> 
> There don't seem to be any substantial errors indicated with the code
> itself. What issues did you find, as you said it "looks like it needs a

""Missing commit description - Add an appropriate one"" is a substantial
one - clearly we cannot take empty commits.

> fix"? Nonetheless I wasn't planning on this one being a final submit
> anyway, since as I said it was a draft because there were things not
> working yet. But if there are other problems with it, I need to know what
> they are esp. given as I said those tools have not indicated more problems
> than those and they seem to do more with not adding further info to the
> emails than the code itself, yet you say the actual code needs a fix.
> 
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC. It might happen, that command when run on an older
>> kernel, gives you outdated entries. Therefore please be sure you base
>> your patches on recent Linux kernel.
> 
> Thanks for all this part. When you say this though:
> 
>> You missed at least devicetree list (maybe more), so this won't be
>> tested by automated tooling. Performing review on untested code might be
>> a waste of time.
> 
> what do you mean by "device tree list"? I was not aware of this part of

I mean exactly what is written. Use the tools and the tools will do the job.

> the kernel source code. I modeled this submission off of others I've seen

This does not work like this. Use the tools, not other people's
incorrect CC list.

> here and I have only seen them submit the .dts, Makefile entry, and .yaml
> entry in rockchip.yaml. I have not seen a "device tree list" different from
> those. E.g. for this submission for the Orange Pi 5,
> 
> https://lore.kernel.org/linux-rockchip/20241111045408.1922-1-honyuenkwun@gmail.com/
> 
> those are the only items touched that I can see unless I missed something

Cc list is entirely different... Did you really read my message? I state
you Cc wrong addresses and you claim that above link has the same as
yours, which is obviously not correct. So two things - my earlier
message and above link - are kind of proofs. What else do you need?

I gave you instruction which tools to use, so I do not understand why do
you insist on not using them.



Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
