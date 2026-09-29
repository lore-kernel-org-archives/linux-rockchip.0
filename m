Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2845CA5FA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 16:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gylgvm2B616rPdqk7brEp96yTwhXrRGL/4FLZKFg7PM=; b=U2BY+eh7xdK3Gk
	JHXh59V0Pj+ArPvsiXPCPeZmSwYJCGduAMSGiDYrcCCh+Z8s0672W/A38zWoXjvFOK1s/Naa1ZhNc
	iEAzMgplOsKtqgwAZeFsdpwXM7iZLXOfXJmBG9UpIraeLneLSbIhr9rDXcLv9mISE/z84lPV4FACP
	IRuXlpzaoHfTnGl289Og41VsLHNpqL5jhvsyhMm9UdNIH+STg5tBDi/acKd2jGyx/g900bYXo+M6I
	c3Dj9ycH5aE8XQKUvN1mDhgQJ3eTJOpusWMhvfMx4ngLmjzxlQzSyCM3Pr7lQbPJXqJbnMdI58Bjh
	8LrE0NQOioZgHUTmNOXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBagA-000000042tA-1t5n;
	Tue, 29 Sep 2026 16:27:42 +0000
Received: from mail-pz2-x29.google.com ([2607:f8b0:4864:3b::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBag6-000000042sK-3jvj
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 16:27:41 +0000
Received: by mail-pz2-x29.google.com with SMTP id 41be03b00d2f7-cc7d1403bbaso228055a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 09:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790699258; x=1791304058; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PMX1p5KQ1LljzZN0fjjRX/ggRrs5b9HbaoJ5+VgHJlw=;
        b=kRDaKeaYvqTrX/YFDuV8UoAhE8idirA2bItYpkFK+prL7iZ0Wf/0T+wyCr/OKqgiYy
         5IQLzZlNuaJaeGJiu7cVni/HFUjG9CiJAMW1y/irxjDBZXfhjtlK/RjlMV9tlFGi+dQU
         iUr5Ixzicz3eSat97HZNAN/LKgHgI8tXBlXs0RYgHG6T19s28vvE7qBDXVi99kvOZ0FV
         RyHE2XEexNEzmn2K28KIbLdjH0zWy80Pcm6Ynr3ehDYbOWh5pYdmqPeTkFT78HxTb2FD
         yK+OEzxq7DRfw0Tp6O6b5e3RQAXzfTkRYu4cwTDspEA7WHT3SsQelcDhJporVoumB0xT
         L8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790699258; x=1791304058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=PMX1p5KQ1LljzZN0fjjRX/ggRrs5b9HbaoJ5+VgHJlw=;
        b=H8tgV7t7j35lNJZGET4CFCreEJRoG6OX1R5VuPTUgg4oGMMj9lpbUIUC1KnmAsFInW
         3ewAvUwl1pK3nx1eaeBfDOyecgi1GjTODr21QtiroFkT7c4A8HWxVB4Ro34CzlzXZQ1F
         wIfzUmK8oyyvxMYkXHG5JLzjeag2DcRmjPSyjFThLTakE2H8oGV7YJnQW+iwr1kQ59vL
         dQZeCrguNFsQIjVyhIau06724/NEC8BQd2TkpnrRGGkD8364fpNISIuHQWV7SGc+X4Kc
         x4ZwoUI40UxhLfUBrqnNERMxarq0V6PhUuDG9ile5D470hJsJX3b2Q2vt2FXK7n7D+Ru
         OVgg==
X-Forwarded-Encrypted: i=1; AKwUvBxGQLzWCcSkm6eU8CBkdL03tLPRuFMdN4k+TgmF/gHPRJU2N1pT7YozNcqUgpys4otVOFiLLWC/ndd41QjbxA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLSjNeUWENnCaXiF0GYgR/p2da9nZdE3rESB9uKfrKqVmNd1Az8
	uVMfDhtZEjVAxsbV0FY9i40nY9NHjJlOrW14i3Wcf2lfFI23E1fR8IOD
X-Gm-Gg: AYBFou2Ms3/xWXSbNGTn9NWjyMPhgcLaqtwfPwIt/m3cLNN7OSaAybbDWQ0VGFy1j5w
	hdOV77FuQfnlysE2cDA5wumkzK5IsRTzVNuc4xp3ltJHZhNqVuYIla1mV7BrHYUNgfH4uU0KKH5
	5iIvlPNX+kU506luJhxBW0x8H9ZmVUIZhDgcWj0dAfuIGLG5U7uZOaCptunKTqp0UTJjwynfJjQ
	ARFLwRLYxAVTsRdDbtSjoT93rJ3nf/hSvLpfzkWtULTO7/E3wq7lmQFMG1EhASkCueoyRHLEsLO
	185AGX7W4zLRG+sALoXNONx6mtNmupiWFYLMhsYFg3+5K6Eo+tmfmcRV0JEB2T0By0T48hwXIfv
	tYLSVPne7yZyza8WAUk9QN6SdYjOOOmlDOdBEWrU4lwZdIO2+T1bBypxTIGJiIMTydLRVAMhIEL
	Dw/dmlsiGSs2G/sPkFlV8YBzxR4EGchS/LpjUcHY5nnRtqf3w/Dz0Ny5PhvVNqQgQN8pZvN58Ca
	BZUjb+e2BA=
X-Received: by 2002:a17:90b:524a:b0:3a4:71b7:eb63 with SMTP id 98e67ed59e1d1-3a471b7f585mr3801721a91.10.1790699257948;
        Tue, 29 Sep 2026 09:27:37 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a497f23328sm6510887a91.10.2026.09.29.09.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 09:27:37 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	mfd@lists.linux.dev,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: Re: [RFC PATCH v3 3/3] arm64: dts: rockchip: fix power-off on Firefly-RK3399
Date: Wed, 30 Sep 2026 00:27:24 +0800
Message-ID: <20260929162724.1545-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260929141337.6F0321F000FF@smtp.kernel.org>
References: <20260929140649.55-1-yaozhonguwl@gmail.com> <20260929140649.55-4-yaozhonguwl@gmail.com> <20260929141337.6F0321F000FF@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_092739_898201_EFB54F6A 
X-CRM114-Status: GOOD (  12.43  )
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

On 2026-09-29 14:13 UTC, sashiko-bot@kernel.org wrote:
> By delegating this core power-off requirement to the optional
> pwm-backlight driver, could the board reboot instead of powering off
> if the backlight driver is inactive?

I plan to keep the GPIO1_D0-only description in v4, and to make the
commit message say what the backlight does and does not guarantee.

On the emergency case: the PMIC's power-off prepare handler runs from
kernel_power_off(), after device_shutdown(). orderly_poweroff() and
the forced hardware-protection path both go through kernel_power_off().
emergency_restart() does skip device_shutdown(), but it restarts and
never runs this handler.

With pwm-backlight bound, it sets GPIO1_B5 low when it powers the
backlight off, and its shutdown callback attempts that from
device_shutdown(); the result of that GPIO write is not checked. On
this board, with the backlight on at full brightness beforehand, the
GPIO1_D0-only setup stayed off in 3 of 3 runs. GPIO1_B5 itself was
not sampled at the PMIC handler in those runs.

With pwm-backlight not bound, it does not claim GPIO1_B5. The pin was
an input reading low on this board, and that setup also stayed off in
3 of 3 runs. That is an observation on one board, not something the
kernel guarantees. In particular, if a bootloader left GPIO1_B5 high
and pwm-backlight failed to probe before setting the pin, it could
remain high. I have not tested that case.

The alternative, listing GPIO1_B5 in power-hold-gpios, means removing
the backlight's enable-gpios, and I have no schematic showing that
property is wrong. That is open question 4 in the cover letter.

Thanks,
Yaozhong

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
