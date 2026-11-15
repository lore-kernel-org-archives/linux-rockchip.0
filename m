Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9DC606A31A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fd66f6nn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=VPhPRW9x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HblTn5QNvHTSOkTYeqysw3DBKwyViM7WiUFWMA+/veo=; b=fd66f6nnICwBNc4BBMt5SuKDXl
	gt2n08xcsbXOw0LDEm+joIWeg+4XzOWicYhIE/xMpCAde4k7iUImZmfVI1CUJ5b8lSLAs6iP5l/98
	DMVEAahJjdbhlmyCeE2PM/1w5uLrDSeOgkmRmJVSvutAPaV63aNT9HqcUpNi+SfbvPBr5WY9XSMVO
	3kmz0LCgI7L5tU+cZ8BGPpDcAQTHimP3wXJWhcFPDiMV/gxc78WyPA3SxSnsrVLPSr/Mgvww4d08/
	wIGtiJBKGIcA2vgAk5ZYpApdSNLwVX4KudoO5u/YpKQimKLr58lp1xvs6B/QQMVl8a820Znrj9LSl
	goQ0MRww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSa9l-0000000HYDn-3l4x;
	Sun, 15 Nov 2026 13:20:29 +0000
Received: from mail-dl1-x1232.google.com ([2607:f8b0:4864:20::1232])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSa9i-0000000HYD8-3CKT
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 13:20:28 +0000
Received: by mail-dl1-x1232.google.com with SMTP id a92af1059eb24-1b3acec6677so3358810c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 05:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794748826; x=1795353626; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/rYsyjftvDCPeS9SbbyhKVYUDY9LVQRgCngM6FVnSFQ=;
        b=VPhPRW9xI8XF9aS+C0ZfMrtks+l9XtIXNSvzdeWbv1wjBKScFsPqBfqGT9Juw2ubK1
         /9zoOhFLQABA8bc3bOpaNW9yn8OuOXMEH7MfiiYU4erWKouq5vT4B6jPEmKxVBWpFWql
         n2DedRBgkf22zTFmDQ5dz7VzdLg6W+mTlyDat/1Rf+bcRenb1tQxTZhRTIuYDJADveXJ
         gSCYGNAsNl3HwRQqpfsjCc3hKOaOHoce5mmaSNWGM8hHxxNnBDc8dD4i9XIKPT2Ow+rR
         3MWCVGxVI8dQfwZLCJeGqcrsQSV4N+KbscuDjXT23Vxc2IPD4Xt+fouvv8q18wThJ56b
         aFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794748826; x=1795353626;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/rYsyjftvDCPeS9SbbyhKVYUDY9LVQRgCngM6FVnSFQ=;
        b=eHS85lhKKT0T5FmIinW9FMR5ovexZ2gU+5WW2ICDl3T0JRSLcO/puX4/SD5lht32K4
         +ehYTa1bcoq2C/PWVXGdtMuEO0ueLsZnVGePJKd5kyRliEDpsfzECBoiOYGwrn1/uTbE
         vzmoJYnYnwBQPVwce7kxFGJ5oQAMlBxeeEzZ4GejdTVIcxV2IZmeobhs6W+1YMti4JId
         x59sxxs7C5rAcIpe5e0EyAOYGYiRmJerBfRlg42Amvu1484jwN9L3BZrBcpTISIZ50Fn
         vvtdmpfhYK70ZZdA6YCfujD+PC7J/3GfiC4pVjJKSectPMJeZB+1zT8zhgX29SKQjIYX
         H4Pw==
X-Forwarded-Encrypted: i=1; AL+hErHcDFJvCA/yi+AHykUWYH/83Sxca7m7Jgn/nTWWnvT0DOzQxsZ682OQuv9C/mb+ljeDWkLtl7t0DrPi2mRHxg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+gX4rH4zx64VEAYlM/joblLfqinS9HDGFQp6DFKDXkVPP9d8F/
	45/9jPzAdue1OGSpNEzUqe8/Y4o1+doWLTLa2rE1vWb7atEfbCM69PTB
X-Gm-Gg: AYBFou0eAQKKPsezXAuIPV67ZVOid/ne3GSdp9I5t/ys+MRnv8QVGvKAYavAEewSCjF
	rs66TMetlZwvrB6NBsC85J3X7vavSVmJtq7VM15dqYgkbn36HYJPNMyh/UsWE8JrN9yYRX0QZt/
	EqYO6Y2UU282hKJrg2h1yNLHlblhLr0J8/ptD41zlAy0Amf8vQ9ko72mUFv/PCkdzPqcHMOc3VU
	u7I5NQicIlOufrDQ81+zau70F4xpAwQs5FJNMwahjjMmSBoSk1d3EiQxQalsaZ9fSwaHjv9lhur
	PEM0qF/i5tAcIETpGp+c/LVuHYQtHpQEEutDVn2l7HPsCyYu8/K11hg8ZK6aJbGS+B6RL3YFdmV
	oH3A148BeQGicJtpnCjji5XVNJscNb665YexJPTmqa4D0LAxq1czq9HNEo3US1gT3Ax7OEnciDp
	3t/WVjkT4ob0iGNVsYaxzW6hNfjAZi9cOawrK2Z9U//tdKnmI5SLcXouRptzYydyf78Dwl1yk+4
	bml2sZy0TW+1hLJ5JXyPQrWCOwhNKn4xhQVrgq3bVzgBbJKuq8X5nZwl00fs2m4TUs/xSOM7hR2
	2PyP2pdnn1Jr78sosuinjyWaNs9EY27qm/OfSbKBVGjgNCxqdX4F4i57nT7OP+mqTM/G
X-Received: by 2002:a05:701a:c9c1:20b0:1ae:e7c4:9a15 with SMTP id a92af1059eb24-1b51828ef74mr4571335c88.3.1794748825692;
        Sun, 15 Nov 2026 05:20:25 -0800 (PST)
Received: from [192.168.35.213] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379565d3e37sm28084123eec.24.2026.11.15.05.20.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 05:20:25 -0800 (PST)
Message-ID: <9f85f4a5-ee4a-4c0e-b902-abea050bb204@gmail.com>
Date: Sun, 15 Nov 2026 22:20:20 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] PM / devfreq: rockchip-dfi: cleanups
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260921-rockchip-dfi-cleanup-v2-0-43ff34ac8599@collabora.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260921-rockchip-dfi-cleanup-v2-0-43ff34ac8599@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_052026_827848_65F627C3 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/22/2026 5:32 AM, Sebastian Reichel wrote:
> This adds proper handling of the RK3588 clocks required for DDR memory
> monitoring, which involves adding them to the clock driver and the DT
> bindings first. The change is done in a backwards compatible way by
> marking them as CLK_IGNORE_UNUSED and using optional clock get in the
> DFI driver. The series also applies a few cleanups to the DFI driver
> while at it. This is done in preparation for RK3576 support, which
> will also come with some DFI specific clocks.
> 
> As everything is done backwards compatible, patches do not need to
> be merged together. So Heiko can take the Rockchip specific patches
> and Chanwoo Choi can take the DFI driver patches.
> 
> Changes in v2:
> - Link to v1: https://patch.msgid.link/20260917-rockchip-dfi-cleanup-v1-0-4f00a97a69a6@collabora.com
> - DT binding: Do not specify maxItems in the generic part as it has a list
>   of items
> - DT binding: Only set minItems/maxItems for specific SoCs
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Nicolas Frattaroli (8):
>       dt-bindings: clock: rk3588: add PCLK_DDR_MON_CH clocks
>       dt-bindings: devfreq: event: rockchip,dfi: add clocks to rk3588
>       PM / devfreq: rockchip-dfi: move to per-variant const structs
>       PM / devfreq: rockchip-dfi: add NO_INTERRUPT perf capability
>       PM / devfreq: rockchip-dfi: use bulk clock APIs
>       clk: rockchip: rk3588: add PCLK_DDR_MON_CH gate branches
>       PM / devfreq: rockchip-dfi: make RK3588 use its clocks
>       arm64: dts: rockchip: add dfi clocks on RK3588
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml       |  70 +++++++--
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |   4 +
>  drivers/clk/rockchip/clk-rk3588.c                  |   8 ++
>  drivers/devfreq/event/rockchip-dfi.c               | 160 ++++++++++++++-------
>  include/dt-bindings/clock/rockchip,rk3588-cru.h    |   4 +
>  5 files changed, 184 insertions(+), 62 deletions(-)
> ---
> base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
> change-id: 20260917-rockchip-dfi-cleanup-feae6eefae9c
> 
> Best regards,
> --  
> Sebastian Reichel <sebastian.reichel@collabora.com>


When I tried to apply them, there is conflict on devfreq-next branch.
I'd like you to resend this series on based on devfreq-next and [PATCH v2 0/7] PM / devfreq: rockchip-dfi: RK3576 support.

-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
