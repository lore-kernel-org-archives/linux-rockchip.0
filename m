Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C837C982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaDCG56hEKqAuWsbVZ12ical91w3/cDykFslzpICCm8=; b=GM9YEqSZHXj+w+
	0whSS7L41H7yaSiGFxVrULFAlJuYHW9TZtFvzevn1FVThqJtMbNa4W9c3OXac6Y8fHA2ylXA/3/IH
	R/Mede99ttfTuxZ5yn2FsqN8Meg+rI8tKY58P+Z7jsC4Sn0zWHEflq6UYImwav0OQD3AUwsWWy60/
	ihKALUMiwbTlZgEOx5J2dMp3JeMTRq4poLj1nlKJ2yK+SgKKKY0VRlMDwIGgVqTzZTbZW+uwzPWWm
	1PO6udi2W6DXd+sxVLPv7PBy3XzZznP7kZrQ2akFCqJgTHAog+adplz+tHV6/mYxaX/koomS9IH8y
	LUkgCzocYDJ2dqdC8hrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Iqc-00000007e6B-1uxs;
	Wed, 23 Sep 2026 09:01:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9IqV-00000007e3F-2qVV
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 09:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=y+jlf8HC0jzi0HPwewqu9aTCsp5Qe3C5F4r8ZihI4BA=; b=XD+Yc8P6B86LtzpVkD+THwAT37
	l39UHjmnmd0ZU6gfKbZSsF4CbPw7r7V2fsWkz5t+fO0xSgf167H18cCI5FWliS6JSSt9i01u5TYvw
	FPPU5NsuoGmul7gEyXzSii6fHZckHonAkhXM9m0KsXaD5GTagN6aWaJimtNtA9K2Dkzvs7Bx7JBwd
	Wh3/GzZzh1JmKnYdTrpBahAFu7JTTqBrGtjbpZiK1eCkGb2OwJwlX6AhlDzkFRfeZlxIg5hsnJybK
	tKPprjUA7LUXJWbx/a7ehiiig5LdrhSpBY4DKjpcjUCliWf/D23ddVY7QqPnVMzjr6ca7TjzrkAdk
	WapxBtiQ==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9IqM-0000000EYU1-3yBi
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 09:00:52 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843178b1c8so100414f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 02:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790154046; x=1790758846; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y+jlf8HC0jzi0HPwewqu9aTCsp5Qe3C5F4r8ZihI4BA=;
        b=Ckrc53mk/XsMG0UKKk0lqQU16zYKSR31zF3aO4bbTMt0RTBbib181MnHgDys0S1Jp3
         LQ4UPnbfofsXJgOi/cuvBolNkM8c206jmwcT4GvCTdVTDw5jwJLKR/WY3lNL45fH1GCi
         sXZ8dCXehpQTJ7W35scUCzLFjQ2wIMebVJ65GM2EkNegJMtKzl5QQmwP4POE+9iL8zMW
         Ha8E3M3ks0jEADtDPDL1i/BICYvymJ24luzB8rnJriuZ/etwBTaSubSvL1l2kL0rrpnk
         Oe4QyA8L40RDFv3Rec/PXUeVBtfyU0E+F1S7Tdmf/SDBA1Ms7A+DdPIUW2jr0p7uHqHH
         8A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790154046; x=1790758846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=y+jlf8HC0jzi0HPwewqu9aTCsp5Qe3C5F4r8ZihI4BA=;
        b=p9FVYmZ6gg4VQfKM12YuUPr4rlxkbNak/npNDeEFX51qVaOcBm1oqqpMbW+43EGd2p
         huKwuDWeANmArweJPhuvCJT0iwWOitrTBNnHAWs98FxYW66B1dCtYZaV39AaGr4jgjKV
         VWy1g3MjTHYCx0zdQaubkUiQW9h3Keyek25ga+A1l6mjtjuS74NoBfskX6t62xNbQGrQ
         0wIq+HYElNkD7/DyBK+60DBOBmLJdBhaa5R3uI3/bcJ2IBwrSeGJysbtRjl31uV5ajKq
         elDwsMXIwcPIsy4V+lKByHMe3gM96weDMkGV+IUrEMPNICp/hXHvypQ8Tk8kM3fSgUc7
         cyJA==
X-Forwarded-Encrypted: i=1; AKwUvBzJYMg8hqZ7ROJnXfKRcJIh7LBtEtFSD/3tPuThdHEzep/hlvZKreS2kaMnGok6xes/bgBGqBQ3o/mt62A2aw==@lists.infradead.org
X-Gm-Message-State: AFuF++kX2uyZOl1qH+cTA4P+a9WS7HuH6KgatnWh9IGwePA7fWCLhHNe
	0LR43IWZ11YePZO76Ax0/DppADtYF6ulpmUAYwd6l5iWMOMijuAemPAI
X-Gm-Gg: AYBFou3tWypB84ZIcMdGNKplGAbhowL+yaVtaQoc6cDSipdio25oiKwxkFUllqGJgyF
	7GlxTQMj83A7+Gg5Hch1l6ajlxJHpwEeuw17dW935+QhLUXRFDbGQm1LAkavvxst7kQ46m13jip
	O37iFgcEssoxkmgqLSJ5dSKAVkZfBZQrhJUdBFN/2S3+7T/+6zCfb0BceCLbC9js7nOabmqtybp
	9OvWmuUc5yb9xvhA1OhsoP1bXWYSov7QcxBJOq4XE1MFvgZV2xMlHmfMExfdy3thYPBy6H1U/Fs
	dUAkDnLniDnPCq9qGt3LuJJZph9sJ+z+DGuYSmiuu5ztWfNwrNTzlpYPHeOmpfGEM2pZ3hYgPJi
	fbT3xjWQtGUr8ppWFMfYzm9H89Hi8E2SKaV72aIMc/Loi38fKkCYo3lekXotLXhMz3A+Rovzig2
	IUsB+2mJ+gGjxgrpf1WQjiTPxcTcHLuTQHvTZ9Pn1Z1ZU2j71oiyA7qHmLHsPiHS9TuLe/Gd8e/
	En6RunSck/eB9GKG6Ol/CEXSTwjKoLspRLC/sklAYOi5bIgiYzgCF7fWu9FTQ7xWjGgj3X8PYmv
	ohQ=
X-Received: by 2002:a05:6000:4a17:b0:487:803:ba34 with SMTP id ffacd0b85a97d-488670c9e54mr2673656f8f.6.1790154044255;
        Wed, 23 Sep 2026 02:00:44 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500D949869966507951.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:d949:8699:6650:7951])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-488688893a0sm5538990f8f.32.2026.09.23.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 02:00:43 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Wed, 23 Sep 2026 11:00:32 +0200
Message-ID: <20260923090033.16539-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_100049_342641_75071C51 
X-CRM114-Status: UNSURE (   7.80  )
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

Hi Heiko,

patches 1/4 (binding) and 2/4 (driver) of this series are queued in
the media tree (media-committers next, ee6a964dca65 and d667a3c4d003)
and are in linux-next. 3/4 and 4/4 both carry Reviewed-by from
Sebastian and Dmitry, and both still apply to your for-next (4/4 with
an offset).

Could you pick up 3/4 and 4/4, or would you rather wait for the
binding to reach mainline? I can resend them at that point if that is
easier.

An LLM assistant helped with these checks and with this mail.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
