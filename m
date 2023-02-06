Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B106DC61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 10:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFa9/0EYmIPm/MGcRrCsh+g3P7bk8yjOqGCm8grNISg=; b=u+DTDgDtUzSSCB
	EWmcyxUZvC8F6tHeEZlfv0zSek/b3WvPh8igLasqfSyPjz57X9MZrbkUzzP+1nRJch4VlpsORSzjd
	JtZki5DCsC/2LNGxB4FkAXAbHf1QVOPFLX20zZusQ9RMWiIBkoXhy6KDRnso3OiTEfsaSoQaWSLBO
	lTSWiDPXaBcNf4iT6Ag41YXdaITqJlVeQC7hcOD77Kz5tNXmL5FuG3cM779mzYbMMfL25PbJ3aabU
	oVCW5TGyVwuo5BPEzmR5stRyGK7wZr6shA0Oww07aXoRiopkXIBRHtIYNBimqB61DfhacfPJ2ZpWr
	k/vIRA+gYkpE3hsCX8UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyyB-008Adz-LH; Mon, 06 Feb 2023 10:43:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyxz-008AZh-7t; Mon, 06 Feb 2023 10:43:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A780B60DFE;
	Mon,  6 Feb 2023 10:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4457CC433EF;
	Mon,  6 Feb 2023 10:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675680197;
	bh=mV/5QJoC95AQLIkKkSeULKOsYtE490OaOy68ZuGrL0Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SajHniSBI5PihrEClgXmzujN7YMxW3wDG1mOw74TQ4aJsgDGY1eLavzcRMgCu3QsN
	 XAM9UAVbrH56c/SW+Vf0Xif5D4c0HAgEDXgZFkTZ2IW/FTDVxPcGjqy1sH67k+Gnjh
	 r8LoI7AGyiZuEp8DEbbOi6TsleGUwXB1LVRa6rqiY4ovw2BHu0BNYwAQYS5AlsfRek
	 b++mWFWtJz5Un8rUSO8itVe4cA7PfwnnmTWvUHNYxAYmS+C56vOKgQixxJILFLwao5
	 9Z2krfSgmbI7aJIeIaw75gLJ7sA/2KsOSZ5xlr7c5UHTGNAmLqXJC14jEZ/2Re8xW7
	 6Lm6AVwsb6mWg==
Message-ID: <1d6e7f32-fde1-5233-7edd-bf8b39509a3f@kernel.org>
Date: Mon, 6 Feb 2023 11:43:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH RFC 2/5] dt-bindings: pci: controller: add pcie controller
 binding for RK3588
Content-Language: en-US
To: Qu Wenruo <wqu@suse.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com, heiko@sntech.de
References: <cover.1675498628.git.wqu@suse.com>
 <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_024319_391005_5513702D 
X-CRM114-Status: GOOD (  10.65  )
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

On 04/02/2023 09:47, Qu Wenruo wrote:
> All the properties are the same with RK3568 PCIE controllers, and in

Subject: drop second/last, redundant "binding". The "dt-bindings" prefix
is already stating that these are bindings.


> fact the driver can also be reused between RK3568 and RK3588
> PCIE controllers.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> 
> Signed-off-by: Qu Wenruo <wqu@suse.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
