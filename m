Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35BBBC982EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 08:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZEexyf8vf1F2Xy91o0rY7Jp9nDU7MyLQm2DFkXMUEI=; b=H+pwymrKmVWg7R
	GNKGSk1UFa6YGh40weV4wslIDRF7QT3B9AySzlBaSsNYVxBTyXJ6RBU39K/qibasxEJXGzvUSAoCI
	EiSNvyFCp4VS8LTZsYlHF3Gy0rJ2mEnpIc+gw1wzgKc1vErUvimnpP04Yghg9eVYzNn1QvGedVPq8
	op2J2HB3TtkBjLSlcC4bmKBydPl8auZba6qn2qhxq2xfdN5OaxXq3HvbU8fMkLzmY7KPvlHIEeaI2
	0ocU+MibN0VwC64HA8BIcJv5BCM1iAWvHjB1PMUvYjAAqm816Yq/gZRtQYu+l0nxqQ2emMg6DYb3N
	/uAv7ELHFLoQBWMQSz5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Iok-00000007dTA-0osJ;
	Wed, 23 Sep 2026 08:59:06 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ioh-00000007dS1-2hhP
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 08:59:04 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49c5a927a1fso167505e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 01:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790153941; x=1790758741; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N0deKAZvEUC2+qIm2qCL9XPw0JCTKVP9Fpq7a4fZNq8=;
        b=iQonFq5j6W3WO/u1grFbP7xZvbRCsCaVitlxNO4zcOV3+XQ7aEOpaRwPrLDBJa55K0
         Mkd9sRDWmaykoZt4RLw5a49mCVQn1G8gYX9E2uDWAiCQ5v04jVOZhnV+JDA0oqvZDGWf
         ktar4Dm4am9FaOIBg7dReBTNQ/g32eu7gZ8FeCkZrN96DX3lIeLh+fv+wDy0EoSdyNTg
         dy0S0Cg/zqPLias6v/BeBG+fU91p6biDaDN5cNLJs5Ji70Xq+GW9st9BHZCJaZgym8+V
         MBVMP0A+1/E42X7RTPiJx1GLe0IEyWf2tYG1Nw3qG5ghmW6RtvM3nJ6LvB7nD/GKtBCN
         wnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790153941; x=1790758741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=N0deKAZvEUC2+qIm2qCL9XPw0JCTKVP9Fpq7a4fZNq8=;
        b=joor6B3pFj9PlEd39f0Ocf1DUEmPvyYH9cQrtujulDp+0p7hGWA5BtNb7EtTzmujgl
         fH8vLYFh+IjyvlhMNz1kueN81zyOxbz33S7NstN/I0LVCwieUbIiMAX3HLW55//T2yZE
         h4KdJm1JK2D15XOV9wiFD+rkajA0+tlBrR1Zs0XDJ1G4qg9TBoA8x+FZXTmf3gkYaZ/C
         MbKGdcD6y1iLd3F50sm0P8auVoLiOf6ML23sudKwJa5R6IYDul/CocA6zImsZ2mZNd2y
         00Y8eWFJHQw1H+zEWAzXhRLr07bOieU2JfI5CwMfrZyVeikMrutakLUjie1vtjmTv8Br
         2MFQ==
X-Forwarded-Encrypted: i=1; AKwUvBy8ds0f/8p9GWsCsgfR+vtRS6+4znGCr2+/0u92jNlnJXMFan/jpR9QIjuYNTd7uWLOEkxArRDljf/SqzIwLg==@lists.infradead.org
X-Gm-Message-State: AFuF++nnmdtXvWuHhPZV+aABhCrzzNNMXTr6lKw2FYGVO+pL55w+NQzf
	FDy+auUYKUnth9dNYLI8HT/+RS3LxzydGwtl0loVGW0TjDjRn3pcqdUI
X-Gm-Gg: AYBFou0b3MVXrBxDcgduwRQapekYSJqxkG/0xLI942sXVVPoYsSb0ZgdSMZwIHyCZnj
	Fs0hI8Djf9C9MWOzfHjRsAgnHv+2WR6W2Y7ouHdJcevE1J0SGGTejzwwfTMjxov+PFaKrfI9L9M
	wHxPJvCwEzeQaPrECJzscVOEqnQ1Qo7UwtlljXfNi30gIVhriT0Ch0yoGc7c+wXXoR7yz0NNH63
	LA/3JhpZlmBzq9J7guHG8Tdjw8bYcfo04RKddOF/ym7eDNtWOts2Y8rnIpf4EwOr1kdxLAyAGdV
	pkJomh7OM2ozOtOyqOWYdfyX55k1eL4XJE0Ebv5ToSJ2/cwtjjFL4YkgPkqgw6GxGFA3CDL2BxD
	aOIbEfN5KG2QTEHNxW61hBDBRVmufoXYfbbrfbUbLlRYjs/97bYyIv1wzDXPF62qvxm1PdnMlT2
	Hl62KCuvyVXPYsskZFXt82Ag6+aX5YsTVABG0kprYmAsNgN6mFNk7Pv0Z0HCfjZb9UY2ACbLHxI
	I2cXKmnr27WYvwPVEeG7L7zEwCOVwgK+vcQGlAsiPDUMMSOqcORG287TXEEmLOIPr2rFIhRngg0
	vaN0
X-Received: by 2002:a05:600c:19d3:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49fdec98921mr21435345e9.0.1790153941274;
        Wed, 23 Sep 2026 01:59:01 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500D949869966507951.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:d949:8699:6650:7951])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe23d4288sm30177355e9.12.2026.09.23.01.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 01:59:00 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/11] dt-bindings: npu: rockchip: allow DVFS and thermal properties
Date: Wed, 23 Sep 2026 10:57:55 +0200
Message-ID: <20260923085755.16219-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922160602.GA3529337-robh@kernel.org>
References: <20260922080114.44662-1-royalnet026@gmail.com> <20260922080114.44662-7-royalnet026@gmail.com> <20260922160602.GA3529337-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_015903_713112_9F8DF4F2 
X-CRM114-Status: UNSURE (   7.87  )
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

On Tue, Sep 22, 2026 at 11:06:02AM -0500, Rob Herring wrote:
> On Tue, Sep 22, 2026 at 10:01:09AM +0200, Igor Paunovic wrote:
> > Assisted-by: LLM checkpatch dt_binding_check
>
> Drop 'dt_binding_check'. That's expected/assumed.

Will do in v3. By the same reasoning I will drop 'dtbs_check' from the
two DTS patches, 07/11 and 11/11.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
