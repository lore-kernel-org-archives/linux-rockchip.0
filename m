Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0E1109446A
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Mar 2026 11:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lq/RLGngTMwKw8Y7ybOEgWLFrDHwkTLeFg+/8PFjtY=; b=NDyDP/Ygm/2kw7
	9MpaxXEljVpz5FXRkM+g6huq9XJWbczR82DJ1yDwacivXlwIwfi0v3usdTd6mwQ5J6CXRnjty2Lvj
	DpmwZLjLBf7SdZsg8hQQK9YgwKr4bFpZlS++21+avvCJQw3ONEw9BU2PrroAutkjyayEyK7DL147q
	qp5xiFi2OcPSNg77v6ySe0orf5IZtselUzqZfN81G9yzCxnqvQhgKcWEoJGSAj31Ylfyw1Clc6Y0M
	HnIiJJl4zuzlcn1f4ZOvimXlUcNiwOrXMesPscFZabezIVNOYYJ51hU817/8GVEv9kTH252NFNFKX
	wu6UbmyITplG+YE87+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3u9J-0000000EOBf-1Wox;
	Sat, 21 Mar 2026 11:05:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3u9H-0000000EOBE-1QZa;
	Sat, 21 Mar 2026 11:05:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A55A640E1A;
	Sat, 21 Mar 2026 11:05:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD6AC19421;
	Sat, 21 Mar 2026 11:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774091142;
	bh=mBvxoIxzZG+Y4MzcvY50ieLVvBcDyo7uxtSR7f3+gVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pUnrJYzeTmlJr2A2znJ+jBRgkd6Ud8fcYUm5SYotmIEUEFEQIgOdbsdr18XQbJru/
	 2IAD8wIVZs/x+dxoS+SSpHISEhNhane6U+m8+H9kA/yjvuKBv+VRN+vlrPTowzBSw8
	 xhig17EeljZAKuRQhR5bZ948B9wY15k+3NUkNup40M2HF/bypATPRRPKACB2t7WOrA
	 e2LpxkdgSQhHj4clFObf6w4F1vowVWq3GrEg/e4s3vc0F4esjNNWk12D6Rwm80HVcB
	 zj66aHYWKBGvWrGS0eK6er4P7LfGgx0QissV2Pi0Ikz+9k3ihhgiQoCPEmY+Sugoke
	 7IyAaYuidsjKg==
Date: Sat, 21 Mar 2026 12:05:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 7.1 #1
Message-ID: <20260321-discerning-beautiful-honeybee-cebb5f@quoll>
References: <13966995.uLZWGnKmhe@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13966995.uLZWGnKmhe@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_040543_426350_EB79E214 
X-CRM114-Status: UNSURE (   7.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Mar 14, 2026 at 07:45:34PM +0100, Heiko Stuebner wrote:
> Hi soc maintainers,
> 
> please find below Rockchip DT changes for the merge-window for 7.1 .
> 
> So far only arm64 changes :-)
> 

Thanks, applied

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
