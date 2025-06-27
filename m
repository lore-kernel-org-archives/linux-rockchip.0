Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93766C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 07:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhZIPcboy8Hwl0yAcfNzVtX9VRPnBV/I4W9Zrw4A+9M=; b=pBfNaD4vlxu5Pe
	jBFSoUsoaPuKGadvkOWum+eab3n9DREoCwxP0IWUOirxKazZtw4KD1sTL5YTujRPlfHuvzPypps4t
	Ky+egjQbWgfm3b7auXhfkbRZZoi9e0dY/1qJBSW4vp83kJcc5cwCRZdRNZT5EM14gq6cLf12SJkj5
	EqRqa/JbYexu85YdNfZFdOYSU5Fi/kDgbLlYij0TV1hkSab+XQ1ABAOiyi0tvtdgqiQq6pQgPwJfw
	bhkdo/Fqi+bnRLyMRKepUBtNFF3MvE0antKyYOFlRhwr9IKQTD4UolFhskKIP3txVjlXpXleCpizQ
	xv7+JZMkUI4wnmQy0Wkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV349-0000000DlHW-06e0;
	Fri, 27 Jun 2025 07:00:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV32t-0000000Dkzo-303f
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 06:58:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9909D5C6AE4;
	Fri, 27 Jun 2025 06:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C10C4CEE3;
	Fri, 27 Jun 2025 06:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751007526;
	bh=U00Wt6aru37Pu+FP5KMXq1ujUHGShgCuBTIQu4QJPGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CaWXwu0iXbiZA7oWvep3mRF5ME28JAE5DrKZo+jVpHw1zwJENwHfmNG0joHXYb2Kf
	 SYky40oOM059O/S9O0lCI8BONxLA8agBRfmtrSq5dLu/5rzqHGvTB43N2x/6X5Bn3S
	 lKwRIAaP9aUCJsHo8FaTSb61FkG5kbVjkI0IPdEz6WkC3JpPza/S6JW4rpFNV5/0NI
	 oYEHRapl89QIDbBjMrqZLhqz4i/2hOVy30S5FXErywoPVa9QDFSM+JinwJP0OTn18N
	 Hwv47z7D7GEuBxF6WXi19mtkCFkZIXMJinHvtQhXVATvPxcIKujcHYgMXu3rnj65mJ
	 QP9ZGi+loBpag==
Date: Fri, 27 Jun 2025 08:58:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, sre@kernel.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	lee@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
Message-ID: <20250627-lurking-amorphous-elephant-e14c7f@krzk-bin>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
 <20250626195343.54653-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250626195343.54653-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_235847_795551_C2609C52 
X-CRM114-Status: GOOD (  13.75  )
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

On Thu, Jun 26, 2025 at 02:53:39PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the Texas instruments BQ25703A series of charger managers/
> buck/boost regulators.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Didn't you receive tag?

> ---
>  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 117 ++++++++++++++++++
>  1 file changed, 117 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
