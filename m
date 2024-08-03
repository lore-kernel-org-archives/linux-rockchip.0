Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 644CEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 05:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZALjBpcHWhtYJNa+lsBMzoVPscG9PhVyOREcFiaZao=; b=dGVKJYz3wKYCwa
	DCvzlIPaCLprpNhYmk4ydlxWvBGuzk3XMa88mV51JJxn0QEVWLO1ima7BkEqjD+lDR0y5GBazEOoh
	wHpFIHM4bb4ytPhchwwPDy2D7THjrcciTF2WjjfSn9yJbCSwVBprlnyDe+aoAsTKn1bRM2xdcKswF
	tBGOkFbqqzbyUmx4wEfFLJua0lLpxUBSAnpGS3gCLBWK0JMMtjkXJVmcz3kMn8oLdFWGbzPWNbtS/
	NBQ3jxjD6ZrDAQyhvAc3d0n2Y2x6xFej9sxB8HoAg/r+qImHpR7tJOC7Qi7Ccf7X4zjj1WvX9C0y/
	GcPa/xq4TqG0S3hJeH/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa7I6-0000000Anvl-2mNO;
	Sat, 03 Aug 2024 05:26:54 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa7Hb-0000000AnqO-1aCY;
	Sat, 03 Aug 2024 05:26:24 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-25e3d8d9f70so5285826fac.2;
        Fri, 02 Aug 2024 22:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722662782; x=1723267582; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gw93++57utP9jDgCwiMGqKOTDkT86N63wDHgTh02H1Q=;
        b=kvhUlFWNdcOyANnxKckWg9freH7phBC0L6eSJKyBGilkRz8oD/aBDMo59w6NrQtZEY
         iefsCgt0Kl4OLTdfFySb4UJFNYfGhsnl0eqx2t2WkAjwPq4BiuBCHjBt1T3v+cTDiOrG
         i2MP/sMufNxr17qCZipD2CXpkcUofhr1jdYn/82C4u0Hq2bOs5YIp9RWINikSdNxWRfB
         34WE+JO8uCqQEYfMg5rfK8PnDwRu1sItDd5tvfRTRqtBS+62VNPUedq1Q75vZ1d/UJYl
         9gNMR0vZwzoO/lyxxkQlINmwky/3Ul8o80mf5ve4LlUK1oxE45RA8I8pYa/lgJCotsR/
         ZZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722662782; x=1723267582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gw93++57utP9jDgCwiMGqKOTDkT86N63wDHgTh02H1Q=;
        b=Xak8bjcNCd4pzUsCxrXJyW2/NP+5wWUrzJuUECv2yZJYUOp6PO5VLhLBSfqHx4E+Pm
         v38WbRhLh0e0gHDPDjxI4BYXqyMNcle9cHmQqoYMP4zAnHoxBtYV7Z4aLNKwZH4M4D7p
         iJ2VHJ7zvvhxGD6cE1biuhTIEyBcvnJ96YdNM4nqMDeXtHJwyMra8c1j6NxH/O5+X7Mw
         2UcD4Wy0lkc9DgvZ4cwd/KX+jMf5J5OvsIuQYIAEd9QpXqV/9x39mPCcZun7UOfAImyE
         I0/2WKuiXOYo6kSCgIAkspZ9MEvrWdVd8d2RsuzqRmWRnaCM4F1ckZTPb9tQ0cIbhIEb
         Nxkg==
X-Forwarded-Encrypted: i=1; AJvYcCXdSeFje7qbGgu8LHTgbajF4XFr1giGrtgbdx7upmkdb9T6LKQ6lbRDgb7wTrnBBUTDSb1RMlgC0ML9seCUn1+Ezy+ChylFviXPAA6FZXW0MVS8BoLZJ6MSpfNR+qI2SXJE9vcS6/TU+u1wGVm/uRKEgmv4W6qWMzU=
X-Gm-Message-State: AOJu0YzHvtAzGVhJTsTm9NJC0UzCniMTOdY5G6QDN9yudGUzRV8YSUvo
	tuPpEkTeGbVELFfJT33iOrBLFIiy06gy2WpircoyQIFXd8R0DAAB
X-Google-Smtp-Source: AGHT+IEdvd40BBz1Z2/L360nmGpmg6LUmBpGm6IQu5JigqoSX0oej7Q4AZZeh3KSK/mxyU7gWtO6Fg==
X-Received: by 2002:a05:6870:9690:b0:261:9c7:a0bb with SMTP id 586e51a60fabf-26891ee2919mr7265705fac.48.1722662781679;
        Fri, 02 Aug 2024 22:26:21 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:47be:b3e2:7c00:141c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec41cb2sm2117690b3a.68.2024.08.02.22.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 22:26:21 -0700 (PDT)
Date: Fri, 2 Aug 2024 22:26:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net, pavel@ucw.cz,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v3 4/7] Input: add driver for the input part of qnap-mcu
 devices
Message-ID: <Zq2_evktLN3MZaGF@google.com>
References: <20240731212430.2677900-1-heiko@sntech.de>
 <20240731212430.2677900-5-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731212430.2677900-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_222623_442512_859D96F3 
X-CRM114-Status: GOOD (  11.44  )
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

On Wed, Jul 31, 2024 at 11:24:27PM +0200, Heiko Stuebner wrote:
> The MCU controls the power-button and beeper, so expose them as input
> device. There is of course no interrupt line, so the status of the
> power-button needs to be polled. To generate an event the power-button
> also needs to be held for 1-2 seconds, so the polling interval does
> not need to be overly fast.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Feel free to merge with the rest of the patches.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
