Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05909CD5BAA
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 11:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1SoPKDBUuC8KdLfM7JQB1gpVOIuN4o2FOoqY16VCG2s=; b=1ZrQZD3sXa2xeRm4RDDzTCau6J
	dl2+aYVm1NcwGP0IS9jdl4YzTFaoHHZyU3io7UllO+pYjfnQqRUXbD89MpY/O7So3U3nHl0ZAsHdi
	JNaO/zd6YFj9BhEVkT7ccx1A+vDJOSxgJsiwum5jY3FU5cDn3Qm0aSGMFL39YH4vkM0wFCY5YBaX9
	qP3kYDKQBNTwuUrGNJt44CDExO9ErnoMIEztqQKerKd1Q5tOrYhQvvSP0Yo9+hjmsXvU/Rtx19Gf1
	8hbcoYdNaIgNDsl7WNnbl9uEICxuc9P/t+CXZe0Md1k9B8ZmPoJlKZDQTmLramK0RLt/82dx9mXoe
	orpS7+TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAvT-00000008APr-0lJk;
	Thu, 05 Sep 2024 11:45:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAtf-00000008AAC-2MdZ;
	Thu, 05 Sep 2024 11:43:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1725536609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P0Ur2BPImMA0ASLf+1LG8Tkzaux8tXdSw6YWPA1hiac=;
	b=QPQLjAG3dBUqXqxYSNytajB1xh++6w2NDLVV+q196vOaXJSQRcdm6/3JSRJXxocJI7UKl4
	tBfT05ynWkc0jLqQ77bxv6U1+Di5InRimdFVfT7YsPCR/+eULog3x5BmXmsBpZ6adJQlNL
	57qCDyDyfY+qFrBGI1PSri1LqIISlpkvGTJ4zaiuxpGdRaRy+wr+kgb/NhIj2eMboFSDIE
	87L1vSXQ5KxNZnxz07LOkUneWbs6/BDgQ/VvcugCHrYBr2PFCa7AOOLaho7ANYQR/DqTmj
	2Ml3kTWB7jBe66qhe7O8BFtv+wEq0XqOG3nN5tUb9vYcWn5ggT8rusmV4vwljA==
Date: Thu, 05 Sep 2024 13:43:29 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2
 dtsi
In-Reply-To: <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
References: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org>
 <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
Message-ID: <946b8248f5b282a8532c8532a3eda98e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_044331_796684_C5F9E779 
X-CRM114-Status: GOOD (  12.62  )
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

Hello Krzysztof,

On 2024-09-05 13:39, Krzysztof Kozlowski wrote:
> On 05/09/2024 13:32, Dragan Simic wrote:
>> Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to 
>> improve
>> its readability a bit, to make it easier to refer to the actual nodes 
>> later,
>> if needed, and to add a bit more detail to some of the labels.
>> 
>> No functional changes are introduced, which was validated by 
>> decompiling and
>> comparing all affected board dtb files before and after these changes. 
>>  When
>> compared with the decompiled original dtb files, some of the phandles 
>> in the
>> updated dtb files have different values, and the updated dtb files 
>> contain
>> some additional phandles and additional symbols that come from the 
>> introduced
>> aliases, but they still effectively remain the same as the originals.
>> 
>> Suggested-by: Diederik de Haas <didi.debian@cknow.org>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
> 
> Unused aliases do not improve readability, so for me this change is
> making code worse without valid reason.

Then why do we already have, for example, unused "rk817_charger: 
charger"
aliases in quite a few board dts(i) files?  If those are actually seen 
as
redundant, we should remove all of them.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
