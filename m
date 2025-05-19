Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC37C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NRrEbUicVL9Qwhy5JfsjfaNLEB4yq4hyw2swjfASfw=; b=t6zFpoUukEyJ/Z
	9DsxmBkssPQ0ui2jG/tvWKgnveWwcx/Jck9d92VxG5jFXwkkzwVMVKaAKhExUEqssB+mpXAUxsnzv
	OpPsIFZHYghuqr8ZVIyAlz3s/l8AwgSe7Vpkm/xRCga/UtI1I10WTs0iXRTRWWa8/GHAxMmUtO+bC
	2m0SjrGjWMgVppkm8nYkDhXu7woJGFEOjgiztOpVS4uSwYaMKCrC0oUec1QxEAHULzoY+OEAdStQ5
	goQnPTKchHNyR97aiyTcb8YHmofLKP2FYF7SABQHHl2B5FSP6Q2uS/MisQBugiElxvX+2I8usUJQ6
	SxULlM+qvXakcSN486EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6iJ-0000000AM8N-3nEc;
	Mon, 19 May 2025 20:03:55 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6iG-0000000AM7W-34Gi
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 20:03:54 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-23274dbcbc2so4308465ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 13:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1747685031; x=1748289831; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cbwzvSnj/Pe5rfAqdyUm19jDsv5CwuOGOQ67ehueUkQ=;
        b=SYWnn14CnogoyjezxDbK9e3DvkmY3Zg3UQxiXiyOlpAqRW/+fswYdWs3vawURBAuNJ
         LvdqNejU9RBtQrUb2M5hCHg6iqs+CW70Qtqx0G6jxrN3kkZXnLCTrfvm7MlA0PjBEiw1
         lf3ko1gpTLHhOIyn3iwxu4Xfi2Nx90hiKwQRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747685031; x=1748289831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbwzvSnj/Pe5rfAqdyUm19jDsv5CwuOGOQ67ehueUkQ=;
        b=haXoWIDmkHIYLJw5ZdV9OCuLEcA4oQ+xjUfBWhLYEfkAPNj6xhgkzv1TOGbPDZ0hSq
         Oi0Qxd4bDvJw0OOBBunpTUhD7FjeCWV9S6bddRRBJqimsXnI2/sCiqCYwSt8gqY7jGzk
         oLwRv2n15XyvrlKWLM7duNx8FYasU0MtLSv+dgXruRtjD1U7L4dg7s9rAZfnHh0ePA9o
         WunqQkuWDVfhiO7enmUa9p9HIy/RjXIoUnUdgb75B2cXRtwZ6N1RwrbFu3W8UyPvBgH6
         YKXV0wQ59UMFe0PbtgIWvK8vLG2Gcg+Y5DEDdIzbC6YfpML0W7J9zkQchpvtH+THWcZH
         wPtA==
X-Forwarded-Encrypted: i=1; AJvYcCVkN7dHGJFABJmTeSmGuJ1CE6/1ZQOGgO0lq64hdJ6aOMMriP/5ZEpJxdx7wbGeQ6oNjqWUaBlVflItmkJShA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5I5gZ9RG4Cc1B2A/wdKbVpZf8sLs1mYVBfYCYMwq3GC2N85wt
	KIxpd3/oFrrZr0uWBB2ayfxUpZROZQKTwMBX3HxKOGXJAYfp7CDflAw1UBTxj6LeFQ==
X-Gm-Gg: ASbGnct/sh0yzHLB53bwqelgI5EWrNtM4a1TY9UVAXzrxia4+W7N+1bKt5vbn7KzLn0
	Gx5paRUoek+k4GRdx5B0T2akYq4YlZZ8ZaGApGXQOzVoJ8hGssvSbPHM4Tae/2l8OuUlBTP7n9e
	agpbH2ey0BCTlf272ePbbGXD0O1Lq+wSEYT1Ok7v9TpxG1IgmQE8i0Cnzo7qh3Wa4sj/qlHeA+k
	MDBvf/GNfMbBOhX+fzK9uGdVVFia1UCKtOLdOt1ixL2jQlOU1Z0OReGYlrazEQ8KzQjaiUMwABX
	eBrB99CLnfkyIHrrwDr6rl72yNfLezLjsF3YIusOgRtYVR3QeBNXINCyzLLWtWZuO+3RfBQ9bUR
	M7jd2NZemxC+N5po6Luo3lVKi
X-Google-Smtp-Source: AGHT+IErS9e6RSBXT2pW/pk4zdNSHk5nSRHMvO7tTzp6d6cj7O03GKefBpQUhfUVuc954nlDtpmekw==
X-Received: by 2002:a17:903:2301:b0:231:d160:adec with SMTP id d9443c01a7336-231de351d48mr192316705ad.11.1747685031132;
        Mon, 19 May 2025 13:03:51 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:379b:e49d:8d8d:4983])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-231ecd5ea41sm55316945ad.228.2025.05.19.13.03.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 13:03:50 -0700 (PDT)
Date: Mon, 19 May 2025 13:03:48 -0700
From: Brian Norris <briannorris@chromium.org>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
Message-ID: <aCuOpFdTQK3cqeP3@google.com>
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_130352_801069_7C2B8FA0 
X-CRM114-Status: UNSURE (   9.76  )
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

(CC a few more)

Hi Jihed,

On Sat, May 17, 2025 at 04:05:52AM +0200, Jihed Chaibi wrote:
> A small typo in the rockchip,rk3399 YAML document ;
> "less then" should become: "less than"
> 
> Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

The content is fine:

Acked-by: Brian Norris <briannorris@chromium.org>

(Feel free to include that line in your patch for v2 submission,
assuming you don't make massive changes.)

But you might consider looking through 'git log
Documentation/devicetree/bindings/memory-controllers/' to see what kind
of commit subjects are used. You should probably title it:

  dt-bindings: memory-controllers: rk3399-dmc: ...

Or something similar.

Since you suggested you're still learning the contribution process, I'd
suggest this as a good starter:

https://docs.kernel.org/devicetree/bindings/submitting-patches.html

and also its links out to other general documentation, like:

https://docs.kernel.org/process/submitting-patches.html

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
