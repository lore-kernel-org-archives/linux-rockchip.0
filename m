Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C68DBC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXJHUvbIUX34iljhNy9xshSXWwz8h9NG6ehJpJHDUZw=; b=sHEqO7yfUOG8ya
	ehOKr7yUuJCV+QrHwNZLMQtPQYZjkS6JVnW4orFDoMHz+wUdcVQ2nehS+TtqNEPd/AiAeWmHk/CCp
	7dc8fNdtzi/wlZrcRG8LBCGYkkBSWoBl0e29Xz8amnnYLwJPXKtc9By3cld9+MgEgElAvh4g4gwXb
	Jn7Me7Dt7X+nb+9cToAfRdUcH/klMgnHSwFb6tFnfiF/xlE1LPFjeg5rXfi48eFTsmVCjcVQRulT/
	5P36s4zkEAV3NWXEALfadtKtAAyT65rlfDcBUx3LOXlKxOMrtah+/7w6Jc1hUsbfeem38FDNS9gsD
	HS5dXizXrVHKjQaTpiKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weriV-00000001FvJ-15A3;
	Wed, 01 Jul 2026 09:58:51 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weriR-00000001FtQ-1blT
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 09:58:49 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2c80ff1bbb1so1616885ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 02:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782899926; x=1783504726; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rgX47RXdJZ0KIqrYqTZV9oy3dGtbSHHIqUStuXB2M/E=;
        b=dsS+13DAkE4dw2vtmP/5V3pufCxUYdxJosyPzZ42+UoJpGrYeyNfSihe6ILc7PH0Qc
         VN5I7l5vAKzH7XJPHrJQbw/paHGrvgJbVKOpjsSMwn9FU5EwGbM2VpjqvajI0E3g4rrV
         6rBrOy9RrF4nB/IrKAUcmj+4uoTbD3SaZ0BTRJ4QgIxA87SrEvfY/8MiC70ZcFNLaib5
         9+58UCGM8qV94NGNwYt6WijioxZtLoFLyC7uLD4vj9/SCuvjWfAgCVT6tv814+Dx72co
         1uZkWPWANAVPUUwQGBGRz9t5LXsMdxsJlCY5L3+CMVu3RppmQL5w3QoELHy6P40qB1MP
         zAyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782899926; x=1783504726;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rgX47RXdJZ0KIqrYqTZV9oy3dGtbSHHIqUStuXB2M/E=;
        b=X0Zw3KhUwpxOogdnCBG1IrBFPMOeVSX1UhU1HA5PrBXzusc/w/d3oUYpmzqD+FpY5i
         U8ImJ5x2rY94XKHxyS1m474j9KhsNVy7V0m3sQVqlMD7iK24fUkR/dWToFsszTpy+AES
         u5TEeiDCiAb23iahEISiRPVufDlYLDBc0lBZpH17/+ECH0Mwxqg5hFUxVoYfxMQog8va
         SRpfx+gjb9dq8erXZjAIFBrooBQ24kxRNit2dS3S9G3kTTAfoOXMNLq93HyX/X3uC80x
         g8MIps1ffaMQVN5sL2pPQDZSD4CCA6a7Uy+ZD3H3Hc1smrTB4mufpMtM8WnAeRXteZX+
         GSLQ==
X-Forwarded-Encrypted: i=1; AHgh+RoY5ungQuadvZok/vosDp0LvG8s4hI6mb/4iv2tv7iLefE6yxqYGd8LP+7lwGYIYZSQxUJJGUVAzSPs9hh7Hw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrAC18Aa2pT7afVzpK9pYUEk6zQ3Q+bzMp2XLjG8SBVh5Svchy
	sGPVz2+hZuWqY9VuVPYbI8CeFbNe0hWErR+9mw6w4B1g55vRNhK80tAY
X-Gm-Gg: AfdE7cmaRTvtkYl4ishR5Z7/Pc7GD7nHFvhpiK6dFxRhQaF/kDvV9hhGwFObGc4AdeO
	yF8fnoOiUW3bL0B5m6qcUoRKFFvKG3wa2vUznGBFh7dEf3GsoDFGyd2WnuXbGBfMZgqSiFNePHq
	Z2almMJkta/1pqL/Y6eeLcDJKqRyP64LuHx7x79z2O9JYgMi/lpe8/oieeArsJ51fcY1g2cSXaN
	PdC7NWdNgdIxZP+HzQsC8cxrXOsjUWU4Js8ULWIIStsVy8JDmmbSSOPrtgfHSKI+1TshEsFxnon
	Opuf1+HshphDRQCtnN2dcVaox0h7JGQCtO/nkCkmhoXnmz8XF4fHTW3r6MB0ZYfZ5grDKWOYOns
	qVhkOOMLuIcWu5Abb/h7ifuimRg47RYiEOux0nBVLp2QiEuPG5VWGgK1rfFNRcAHAhhP4AJkw2Y
	5+3e43a+0O7WikImhI
X-Received: by 2002:a17:903:46cd:b0:2c9:97a8:8c17 with SMTP id d9443c01a7336-2ca7e8c6253mr10964195ad.42.1782899926244;
        Wed, 01 Jul 2026 02:58:46 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2603:c024:0:1f00:233::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca382d0d22sm29144285ad.80.2026.07.01.02.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 02:58:45 -0700 (PDT)
Date: Wed, 01 Jul 2026 17:57:33 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_2/3=5D_dt-bindings=3A_arm=3A?=
 =?US-ASCII?Q?_rockchip=3A_Add_Graperain_G3568_series?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260701-reliable-dodo-of-tolerance-63cc8e@quoll>
References: <20260630153810.3574714-2-coiaprant@gmail.com> <20260630153810.3574714-6-coiaprant@gmail.com> <20260701-reliable-dodo-of-tolerance-63cc8e@quoll>
Message-ID: <7A7E4706-D4D7-48C6-87ED-F1F7B4DCE0F5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_025847_423318_9E9EC932 
X-CRM114-Status: UNSURE (   8.40  )
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

On July 1, 2026 3:07:03 PM GMT+08:00, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>On Tue, Jun 30, 2026 at 11:38:11PM +0800, Coia Prant wrote:
>> Document Graperain G3568 v2
>>  which is a development board based on RK3568 SoC.
>
>Broken wrapping.
>
>Best regards,
>Krzysztof
>

Acknowledged. I will fix the text wrapping and clean up the commit 
message in the v3 submission.

Thanks for pointing it out!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
