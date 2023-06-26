Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21C6EB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 14:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDwdQeQt/KR5vbBrLaWeb+/eOQXNByDFg/+IwiS/1+k=; b=ftj7DLTG4fu0iq
	kc3YKnurGaGkCy827Cmr6NPEXJFJgdSTc2nSOjkYHP7T1TQpiFjvZ1ZbirWgNFurl20d+B7ljrCY1
	yIa6QXIahs4c6Mg6zMySijKbr4allZa3adUkwcXYXRHxyk57lcdUAOmqxj/tiHqvFGEKugw4Wni9p
	wIC+n6mMhiN1XwINpme78mXlIU1a1WOgnPH5zApnD0jtjEw26LcRbCpepl7hXblAj1K3LCIlVoYk8
	cS8vm6QUt51yo2qmhhzkjogB5DxvLKq+lLcN7vXCAHadSgBYMmlAOXMR19BGiTK97gfIL7z2Q/Lu7
	OFccv5Tu2Y3kbwfemVIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDnNf-00APby-0v;
	Mon, 26 Jun 2023 14:39:51 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDnNb-00APZa-2w
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jun 2023 14:39:50 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-313df030ccaso3027052f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Jun 2023 07:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687790381; x=1690382381;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GbmG/0Wb9nQ6z/PJEyshEPOBYP8Ve8ZuPqHoAlT0PBU=;
        b=v+xGmGJ0qIKRU0aurzhYHzIhjNpseb32nFxtt0cVXyZgxRKLexvjA1I7WRCD30AJL5
         Eh+qbIjAP4NQcnlNR1I/NzBsJKqid+podoDPCDocJl+LEfk/pJHXsu1L4EtQQNKsx5dP
         fef50DtyMYVYCyHso5OggdKwQmH6wr7etq++Nio8hL9QiYjg2gVJtWMqiO7yErYgevzf
         8IKienQinE4jICssw7dY926yyBUebZc/1seLsWOtDpNlnlmAc6/i5uAzbdv+jtLbsHnA
         hNiVcwkKf/6G4yupLdqBQJX93vw8ruAa85Bj++UM8ySsTwFkZPPROGk10fcd/nOaXpWw
         /H4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687790381; x=1690382381;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GbmG/0Wb9nQ6z/PJEyshEPOBYP8Ve8ZuPqHoAlT0PBU=;
        b=YzVJt0ZrT8t9Vph7wvBZ+cOV59uk4Z/b4jUqZ+WWmztR0RgZZfH3d0IU1nJ7Yy89pT
         WAyc42B6yKnV0DtStwI6oMqJ3+6xI2CaPe57JWapepOxNQusFN5bXa80K3c5x2sY478p
         Xio+uB75r9c17ywaCH9xmOC7ZHBH6BgSKdUmWYxZ5YQYiw1SxqZwMZpy3Uv1zNPX69yK
         ZHLkNphXlj4BrlB41lBXq0XNVZQvYI/3YLTNQ86z/KHKM6Hw+KhVcOSWV2+CyaoGlFLi
         ZtLEi5F62lw/1C5H0K3SidwyIToX3dcKiOlYw/UhKOBPunw3imKK8VTUL5HVQKnzorZS
         d5/w==
X-Gm-Message-State: AC+VfDxtzsMIsUCtJ+5MLcikCBmKneR3bIAAnppXPXXoL6LCVqf6vqZ/
	PfrHka0IYzS+t+pNqVDH5BNVqQ==
X-Google-Smtp-Source: ACHHUZ5u0xLo84AQuU8IWtL8/XKYwsSCcaLqPaN0OzwE1PROPfhND29UAU7NVe45aBYE+KDJ8dq3Jw==
X-Received: by 2002:a5d:4250:0:b0:311:170e:8d with SMTP id s16-20020a5d4250000000b00311170e008dmr23526468wrr.26.1687790380687;
        Mon, 26 Jun 2023 07:39:40 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id u14-20020adfdb8e000000b003112ab916cdsm7675793wri.73.2023.06.26.07.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 07:39:40 -0700 (PDT)
Date: Mon, 26 Jun 2023 15:39:38 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Maximilian Weigand <mweigand2017@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Maximilian Weigand <mweigand@mweigand.net>
Subject: Re: [PATCH 1/3] backlight: lm3630a: add support for changing the
 boost frequency
Message-ID: <20230626143938.GC95170@aspen.lan>
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
 <20230602-lm3630a_boost_frequency-v1-1-076472036d1a@mweigand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230602-lm3630a_boost_frequency-v1-1-076472036d1a@mweigand.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_073947_947518_205D2BF0 
X-CRM114-Status: GOOD (  14.98  )
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

On Wed, Jun 14, 2023 at 09:08:52PM +0200, Maximilian Weigand wrote:
> From: Maximilian Weigand <mweigand@mweigand.net>
>
> The led driver supports changing the switching frequency of the boost
> converter by two means: the base switching frequency can be changed from
> 500 kHz to 1 MHz, and a frequency shift can be activated, leading to
> switching frequencies of 560 kHz or 1.12 Mhz, respectively.
>
> Add this functionality to the led driver by introducing two dts entries
> that control the boost frequency (500 kHz by default) and the frequency
> shift (no shift by default).
>
> Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>

Driver changes look ok (or at least will be when the DT bindings are
finalized).

However... I think patches 1 and 2 of this series are in the wrong
order. See #5 in
https://docs.kernel.org/devicetree/bindings/submitting-patches.html
for details.


Daniel.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
