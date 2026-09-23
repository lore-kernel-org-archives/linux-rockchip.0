Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B99A5C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 19:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTaA6F+arggz205yDb7ZSOA6kKq0oGfdDkdgjVoYQgc=; b=oIoXcPoRUiQCmp
	zXvYdrfitCpEdsOeZ/7x5fniLXele9VaT3pEzGdbXnVJWDnycRezYAhxl9FfhrjRmx/fpHqPSHOi1
	Z9x+BNLXNbWTOag2vgjcWxB7XbumSSwv/ohzs9msQObXfBNMXpWBtjf74Ygr8KV3NqkfWJGEJJvLm
	Zn3k7cERfYUPUk35to1elQQugha/1mILx6PmWiBsFjPZ9d0f9NDCiua9AlItWDqRb43qoVT9GKD4X
	BxAh6Cv1jyIY6LMznUZDGVQs2V5gCje6o8TaK5rkz8ti2SexchFjg57kJeteOCmtuK6cPCHM0h7vz
	Nlm9u5OkyXs/xzQBNLUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9T3X-00000009MzD-1u01;
	Wed, 23 Sep 2026 19:55:03 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9T3U-00000009Mxc-2jCh
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 19:55:02 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48583cb7d44so178305f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 12:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790193299; x=1790798099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tLk6o6UAGSAyPrMGXPvZEKdQLnv1x/FQZrjKDEESrwE=;
        b=lMhMm0Up0Sl8UnbJ2dMK6gsUDEKxMOmxKhSuNb0CZWdU7Fr2FqkZfAAYRJ7iY1IC/i
         51j87YDORTnPWImJ5j2+MR7JxgfAOhryj9KK2GjadLm4ljk5LfB+Qd+Miny1sVxd/oju
         XXWFRf5SHThUTT3nE33hpxw0RxWJDhax8lkZPkvWAp0q+XbzvXT6gSaKZChfctgH5iCJ
         2pT02cFAjQKKu0JkOkIb7BWn3q5YLHHkTBE1QGH9Dr69IzEvx9063XyBS5uDjHB/JzkL
         QtuSJDvXosucbBXuUAdCO+47VwLJiMqGHCQep3dPQKnFXtivy+AKKafu9orH20ubfu6S
         QbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790193299; x=1790798099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tLk6o6UAGSAyPrMGXPvZEKdQLnv1x/FQZrjKDEESrwE=;
        b=1xgrG/zxQcsr9tAN6W+SQub6CxDw7KHYTT/ughouyocLNM1ov7EaRG4dPNOBd1j50a
         +pwwZSmfwMaTekqRPfEetF29hsYeZg2QK4QVAheDTT+wt8Pq5l9w61COQyN8oi4xt25z
         lTsdV50SjHUs1jSmrFeGCbg4oiK4AQzY/97ioTEWaeluc/q1JPNDwqV7v0HJqw/rTVMR
         98rrXXCINvoQ7h7isMkcSVuREHkUO460WCGJJvtVYJNgMdMyKaCHsDV5EHStQpUBk8fM
         /vVI9nCk6ABRDUBhntPiOjXlZmyS7LtwnqiYe/4LXLAvjrEFfzgG7axl9L+kby/sJeeb
         +jGw==
X-Forwarded-Encrypted: i=1; AKwUvBxar8FQtcnyvB6/w2zBHuuMAwR6aklmLjbcEE7FEIu9NwWCct8/mkZejwWsaMTGLQGdBNoheCUsLbNGjxCW4Q==@lists.infradead.org
X-Gm-Message-State: AFuF++n9EA07Kx6LhtOJ4AOGn7NQbG6vmH3sfEkGStciAoc3MGIkpNfw
	RUwpHkyGRlnAIhxg3jZZR6hNGySkOUJgk9hEJKQDABoYSGcEySn9LcGA
X-Gm-Gg: AYBFou3L09mmoKUAYOJy7NUvFMHhmUUDnrmSQfT+uyV+c3UEibuxMQxpDiw7VNQtdGt
	dvecsI/yddY3MP0ASh7xDn5ZSzizDv/Z626JdE0oAWij0/EVu8iUMYObitU0gMHjTmK4MsHxYzA
	Iu9/e8Sb76fyVgskHF8x/86Gsll/OuflqNr6QCGEnG0QW4RyfcFbSQ5oJsLABEPzntyak/YoYns
	Im3KoFfAXNODjalVTx+YwpTn6F0rYEc7L/4+CDCZg3PkOmiUXO0mLg8r2yLObly67ecPtwcjkDX
	GMSmfT4/ig8gr1J5qFlT+QIkW1DhvUTIeaVhbLtCrQLQTYXSZ+WQ18b3nsGEQTjdLLB1PSCAUcv
	R+Ws9ACWpI1+GptfZfzq689pTd5F7L5VBMNcK2Z0+hb60+2SZs8vObpJ/S5WyrH3ay0UuJ/XmaO
	LI+YU54gVQMBFjRiikSgvjZp8hUdq7jUTq4kusesIfc6kBa6TuxBnkCaKOSxMNgpPca0vqzUmrz
	wtAmJ7+BEvOLPaMARU3UO7zvw0isz44pAqZ3+axklxJO5B+jOCrtyhZdHV+woLR7MtqlVlZjA==
X-Received: by 2002:a05:6000:2083:b0:487:a9f:4fa2 with SMTP id ffacd0b85a97d-488716ef593mr320372f8f.1.1790193298626;
        Wed, 23 Sep 2026 12:54:58 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500007AAF7E1F4D006B.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:7a:af7e:1f4d:6b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-488688856f0sm8592627f8f.30.2026.09.23.12.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 12:54:58 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/11] accel/rocket: DVFS for the RK3588 NPU
Date: Wed, 23 Sep 2026 21:54:23 +0200
Message-ID: <20260923195423.10244-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <9cc5365470490b4b66364e60fb614ccda7e86c6f.camel@ndufresne.ca>
References: <20260922080114.44662-1-royalnet026@gmail.com> <9cc5365470490b4b66364e60fb614ccda7e86c6f.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_125500_729955_B1CBA649 
X-CRM114-Status: GOOD (  10.04  )
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

On Wed, Sep 23, 2026 at 03:29:49PM -0400, Nicolas Dufresne wrote:
> In future series or update, can you use common formatting in the future, I find
> your changelog hard to read. Do something like:
>
>   Since v1:
>    - Changed patch X with action Z
>    - Fix blabla
>    - ...
>
> Its actually good to be more concise in your communication, "wall of text" are
> difficult to cope with for maintainers.

Thanks, noted. The v3 cover will carry a "Since v2:" list, one line
per change, and will be shorter overall.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
