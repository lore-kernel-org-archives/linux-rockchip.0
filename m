Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0ECFEE0AD5
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 11:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03xY82Rbpz+6idYKAmpBFKAIH4QvzRBJ1aU94pZVJfA=; b=KDzE131DAaK1bn
	P1m3lYSoi4PbbqKcFJaDLRV6kEMNB30GXKnU7amUGQUUrmxScNVLbxsMveHqjcnM7iObvh2R5OlMg
	g0A6l0MaYLjF6ipDMkdoeCvA++wLu7xS0s7tmpgwmZkVGHmDYsQQNhflEgS5oq3KvbGgCbqBjwF6f
	DvyCIWMEBE8/0LKmc86TDRvVKjKo4eGHfSPdkdUMeiIpMaMNn5K9hAyj0BWr6mwm9uzayj2QTFLlX
	xFyPUpZRUg8duN5gkPgQGhvclyPj63aycQiFEFEud+cnhxcRXKyE26e+czPzevuF41HWQkxTQWvat
	CC4RkI84pDxuBKD4UWEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog6c-0000000CNuN-23XA;
	Sat, 07 Feb 2026 11:04:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog6Z-0000000CNtj-0vii;
	Sat, 07 Feb 2026 11:04:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8E45142CC1;
	Sat,  7 Feb 2026 11:03:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB643C116D0;
	Sat,  7 Feb 2026 11:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462237;
	bh=5Y8pWUfb2MHUSeRywGBORqgLcuWNSVW5eedr7SUp5GQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKousi4HCF9BPFvdbxCBeYZ1WkbAXtCO4c5vJIKC+dAtnbs2dZkvVtEFZVo4JQ7RE
	 /pre29h35WX4sXKam0lMo5/KqDM7NRn5MdRrOa8E8DnJdIaOwU6Budddv5MtNkQZBg
	 lnT6VPIrhNulnFxyJodUoVfvOnIJnr9Zsgm8t3xYuElDPIy5+1nE64tJsek4Ysh0AJ
	 H0CgxyPyvq10GJ9DhTlNEkiTIhTmt15Uh1yuPK9ieujGd5egU+HFumN/PJUI+trH+b
	 Wd4qWFTBPxavDvpAMpn02GlSvIy1Q7haIuy3NJODUMFNGQW7bTfzGMJpO2Zlc5Ums2
	 zDIri82iE5Q7A==
Date: Sat, 7 Feb 2026 12:03:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 08/11] dt-bindings: soc: rockchip: Add RV1103B IOC and
 GRF entries
Message-ID: <20260207-fabulous-zippy-woodlouse-e8adcb@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-9-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-9-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_030359_308032_80DCA205 
X-CRM114-Status: UNSURE (   9.72  )
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

On Fri, Feb 06, 2026 at 03:13:06PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The "General Register Files" provide additional setting bits
> outside the regular IP block register space and it is accessed via syscon.
> 
> Document the RV1103B IOC and GRF compatible strings.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Why there is no update to the list of children? You added it with MFD
fallback on purpose.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
