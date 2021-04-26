Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B91CC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 21:11:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC30861168
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 21:11:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC30861168
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WBgLWyNsIOSOLbTSwP/tBKLEX573kS6duE0KK2Ha0gQ=; b=DUqVVJNII6mi0+j4NRbbDN1NO9
	0Wo8/mF8fVxWvd/Czu7xBb0Isu23b/QAYXeA5uqTDEJ5eG5oFTZAemKTu3oKmMvRJ/xj9sApL6MvZ
	WOcoc7wcOhfP2wqHT9HYVYLOyLt9Y5eQzMlGPtQI8XZXjqsjJRZcp0LLaAyhj2/+OCMfYMf8/dJfT
	7npK7UmetYdzOHSaowIkm0l3CTPJbtEbE+Jh9y0H28+Y2Kj3Yu39T6V+qKhXOE/LCbGzi9iHi0oRI
	nrzF5gZC0T5zRP5H7xAul4tkfCkZwY0+RDPnMgNwGwmMiW4DLGQ7kxc0sjuaBW1KjVl5dThQOcdkL
	aDuQpU1Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lb8VL-008Xn4-By; Mon, 26 Apr 2021 21:11:00 +0000
Received: from bombadil.infradead.org ([198.137.202.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb8TZ-008Xdd-ST
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 21:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:References:
 In-Reply-To:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qwFX6PZglgQ0KERJ7+7V76/7nTNXXxP05BRGy8x2Ftk=; b=EJ7r88yk+jz2vbuDgcgPBI0dEy
 P5wFdYE3hyFmJtqhO/lHHCbP7lImWESz7mpnKnmTHXJrO3HIC3xAhG+4tl9OU5kDIXlggtFwXQv8x
 Btpbl/16OPJyBTarMMplYqoRPyhzWR7Pz/eGuozFfZfCE1/xIPRAyCQPhWBPhWjm+TkBL6Ft+JdGq
 vDZcyBjLdXZCFsvGSLT6yNJbbww7D5pINYvy/gtZ9X61/KAYYqLGEnOYgzIX5z/H8DSJqOTUVEGB/
 4IqrJTxMsd7SDen7DMm/SoqM62txnghLXFfiXKLEt4/bOBvOc5oP/mrto9woeDHhiCHHteA6CTAYG
 gHlNdM8Q==;
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lb8RN-00GDq7-V7
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 21:06:52 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 y14-20020a056830208eb02902a1c9fa4c64so16947436otq.9
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Apr 2021 14:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=qwFX6PZglgQ0KERJ7+7V76/7nTNXXxP05BRGy8x2Ftk=;
 b=P5c/82EjeoCAj60JpFxfZEMfl4vXqfyxHanoXiPTm0RAYmLg0l6hoyVwaUtyi3I/cB
 v7qdLYfhPTviLZcq7MfNscTRTz5oIH56xD5RsXXbzpvdlaip76aJyUFkvBYjzTAGGJ0M
 FKBDpd7h5C6NfjLYCpmwGay9TEkABE7k7YSWQZcUSljyAwmw364075sjg417oPBp4uHG
 A4QDQ6FKbNj8Si7bKIaw8wF1+O8y3O5NRsyhaJh+PwQs/2mpr01onFEwSy63mlb5uaA2
 nGHTL9xlErsu5k87VunH0leospqZUocjbaZ/cC/MC0q11j6j7j8HaVjGNqXLXb2Iyt0p
 Qt5w==
X-Gm-Message-State: AOAM532Jha47HEVG0SOzDpbjG2TwGfyoUOsSKHqgvZ3qWZ5CrpStKjvz
 EKoYNOGAhiLCGp9cP+BRJQ==
X-Google-Smtp-Source: ABdhPJxld8IXK7jlyHTM3WiANmAMnbbgFNwqGCa68a/ZWPSGGWCvuYn/Hk8JtBW77Rc/ofOD4n/LJQ==
X-Received: by 2002:a9d:628f:: with SMTP id x15mr16589440otk.186.1619471085322; 
 Mon, 26 Apr 2021 14:04:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r12sm1100730otq.28.2021.04.26.14.04.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 14:04:44 -0700 (PDT)
Received: (nullmailer pid 4086055 invoked by uid 1000);
 Mon, 26 Apr 2021 21:04:43 -0000
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 kernel@collabora.com
In-Reply-To: <20210424191946.69978-2-ezequiel@collabora.com>
References: <20210424191946.69978-1-ezequiel@collabora.com>
 <20210424191946.69978-2-ezequiel@collabora.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,
 rk-timer.txt to YAML
Date: Mon, 26 Apr 2021 16:04:43 -0500
Message-Id: <1619471083.436726.4086054.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_140650_018252_08F3A382 
X-CRM114-Status: GOOD (  10.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 24 Apr 2021 16:19:46 -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml:19:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1469995

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
