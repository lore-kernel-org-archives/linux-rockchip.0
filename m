Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7C06C79FBB
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 13:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQxkxtFfEiEcQY8Gbfb+vsxJBsyztapofvbUuIfH0wo=; b=USmybiqi0yheeq
	ySRNEcgnhueTWtcyst8bzp1lAHUt6+Ky0VrevviHdcKTpLEV6/lDdE7x1vQr/vttHiPLt3joljwJF
	ACVgvRKCFJOhR9aXYlJfhjoS1ULIHSCfOaOmjKfW0TPUdoR0Fjqp3Hvg8i4Oym0Xq3sCdrZQ5KK3v
	83PFm/xTyhpQDrTGcyDDA3q3sZhIvQvm41CCqSK7MIyE3vg8fXJT/cPMmCdxVTpaR6xuv50DKshMe
	uZjomAsdOjxUSpvGz6oAE2eA6mkldXSGjNwa2EhPJeEFD7ses8fVqHL3jRiPlGsqZGxDz7TbKDQtr
	aWM64Iuj8F9PS597jtoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4IeL-0000000Bq7Z-1HHw;
	Wed, 09 Sep 2026 13:47:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4IeK-0000000Bq6w-1PU8
	for linux-rockchip@bombadil.infradead.org;
	Wed, 09 Sep 2026 13:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CK3Qd7JtwaCS785oIL9SXaJ5indJD5W5VLAi3IhI91c=; b=VD0vX9HS5WB8cDLkf+84mFJ7pX
	IkEveY0fjDd99KHwKkO+yEadDKtg6brv2QPgYoGT7FDlsKupX02PvNg2AzQOaBNRPzQUuCBmxl2Ei
	YguH0XwRNkv+gu0L0Phy3MXgcb8C17sODImKTkgW9MVuJTL8nl6gjcuLWjdpAacZAcaQ6BJHLfJW5
	nLqUe8BZLqLTrudDCBKelPj/NYI7MFso2veS/8FKWhIh8fdC5Vu+BJkxwUpXEa0kuAeDyOIwaVN3R
	j+fxz68z9HleBxt7T5T/YvEXT7hNklb269B/RjYXtS0oo8+0z5lYTLhIw6pM2HKQKCSWgTFG9uS48
	idmoxJqQ==;
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4IeH-00000001Fqw-1Ymu
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 13:47:39 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-39c86945164so60619051fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 06:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788961655; x=1789566455; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CK3Qd7JtwaCS785oIL9SXaJ5indJD5W5VLAi3IhI91c=;
        b=DLMXVq2SnzzgtMnTphFXtxPTTul6op15saBz766EZFV57tpeyn5Ye9oN0PXnuCtKtj
         h1fy+0P112f0HccTfcjhZMKIW8b88oSoztSIdq1AZxR1PJgvQBbnfYmBNpJHspN9Ulor
         mU6F/TF84EhFPa/1LT2ryQQChvxfpghSlTsbRjDvWhsWBpR7jqKxEiVp7ASYIygFOmXY
         U2WKU5LaGUv2znoWtvFzaICuGx5dFXU3E4syvZs6fxom5HvTfUK6Gt+xqXSh6PAa9Q1O
         6pNKEfVBPYUSTeJ8ZTiGMcp9uVjSrq0mJS7awQtCojx/eO3ZP/KW4l1yN/8aNbXTB/9E
         laxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788961655; x=1789566455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=CK3Qd7JtwaCS785oIL9SXaJ5indJD5W5VLAi3IhI91c=;
        b=O6DDWD4ErEMwMesUZWOP4E7KGZUkn6CoCGlYx1OC25ovaKJXJi1iX8qB7n6bMUtSyz
         lGcWDLmk1zRQrZSvQlyKh4U6Lp6afiVkPMQjvMWggSvskZbekFXqseN3rMkKCIqkd40d
         Aq+tbH9T0RYGVnY+Ag0rTDPOERAqynPjYExbK8uQjV0pJ+tx+ys+Z3YGbqVk1cMMee+y
         fQwUZIbL0t/zoAWdomMXbbtnhZELL3yOa1dr/XbNHCw8A7OcN+QfyMTZL7LDHybYX6Mu
         skrWzIP93pluqpFH6ht59QgbQNYOfbJmTm+sj9NWcBUdUD1kXMhsef4ll+kF5UsvHpKs
         3dGA==
X-Forwarded-Encrypted: i=1; AKwUvBwiT+px6CG1pxZNGZtnLOV04vIr5V918NqGNl2Vj6nLyJy2PH8FP5KC/k8GpvqxhDi8DWRboKA/utkcRk2fOw==@lists.infradead.org
X-Gm-Message-State: AFuF++lEJtm2HmCeXVTt1HNUYjOdI2mNY75anfDbDgG6y2xVMIq6JRaJ
	ROeFEVhoB/3iWWZuQy+YPQON0KpbEqPyVpYdtD3CI5f/saVBKTB1NB3V
X-Gm-Gg: AYBFou2WAEzL+Oz5BH3/sVD7y0RrAhKsA05XfaAhH2Qw47BazDze4BbQ9/yl+48CfGO
	UhuVFhQFWQXTxqYMNDOhOb0oHgT6HCjvSEbumH1giLRKVhQtL5sYjQvfgDF0UdeIHebuiNmE1M+
	bRNZVQWcHCIwhOe81gcN3OO7pQkDzeD+FyQxXXXHpwQw+6Ca0zYLNkeZM4gD/8U9YHAwG3mzThE
	VClz1kyFomBEUhH+cLlDW/eo018imhIf6QF48zGh4bqvE2c+1okd7Iw/BLBjXSSsU//1gGbBDev
	XII7vVA6kcMRno60rLJAEplBccIhzMav4LpFfZkG1mBnXfTXvbWFLnLsANyaIQh3cBfstx23a7K
	vJI0dUf8eEHg+dRStXYmDch71n+JLWLiFBWW0vfusuL7BcnOHaRxCfhOKoG1gr/JC7nk4iIt337
	ikM8wgaxDCftSn7X4lmKzrBqWY3pV7AsZqjBuk4WuF46L6XtCjq/BpbHg6/PyqmE1VNDdFqGomu
	oxVMbwiXHJHKA==
X-Received: by 2002:a2e:9fcb:0:b0:3a3:7681:6d72 with SMTP id 38308e7fff4ca-3a37681756fmr35983981fa.27.1788961654972;
        Wed, 09 Sep 2026 06:47:34 -0700 (PDT)
Received: from KAS (94-29-32-34.dynamic.spd-mgts.ru. [94.29.32.34])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a58f539ec8sm136161fa.12.2026.09.09.06.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 06:47:34 -0700 (PDT)
From: Andrey Korshunov <razor1702@gmail.com>
To: diederik@cknow-tech.com
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R28S
Date: Wed,  9 Sep 2026 16:47:31 +0300
Message-ID: <20260909134731.364-1-razor1702@gmail.com>
X-Mailer: git-send-email 2.54.0.windows.1
In-Reply-To: <DLAPRUR4Q73F.1KIBGA408LQSJ@cknow-tech.com>
References: <DLAPRUR4Q73F.1KIBGA408LQSJ@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_144737_527341_F821966D 
X-CRM114-Status: UNSURE (   7.64  )
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

On Wed Sep 9, 2026 at 12:29 PM CEST, Diederik de Haas wrote:
> There's already an attempt in the works to upstream NanoPi R28S support:
> https://lore.kernel.org/linux-rockchip/20260907-r28s-upstream-v2-0-21ab570fc91c@proton.me/

Thanks, I had not seen it - I searched lore before sending, evidently not
well enough. That series is further along and covers more of the board,
so please drop mine.

I have the hardware and will review and test that one instead. One
finding about the PHY reset has gone to patch 2 of that thread.

Andrey

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
