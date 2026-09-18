Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393A1C982DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 09:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxvnyWr05WcVKTSaKimPAhnV/v3SzZ+GK7Q5YfqFFQ4=; b=iXuTyTh/RsJihG
	PZskUtY+52KVgMrCU0KzKGUFZB8EU9Pwh48nKHTBflKYMEuIOKzX6VSVbmez1iv92UGzh6qNW0ne/
	7ipXayldU25sAlM5XxTkmrZ1RzXKgTkVWKMhj2VQxLAra+Cx66Illl8THlckJkJie614HlL/tVcYf
	3zThXrz7y+m6/pO7NcVS5EwmdT2Xj3pkSAtwwOdUCwdkIhg9BBaY+1No9jzBu3i/U3oQ46WW09Ssl
	qk9+Z726Q/1DSgjVC7Mkn5s4xc/GyQDNWRinSXF6/B6YkQMS2zWFa78IAhkq9ZJOyXogLyVhAADjY
	/imzgE6XekI6eZu3SU5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7UdE-0000000DtrK-1FLv;
	Fri, 18 Sep 2026 09:11:44 +0000
Received: from mail-wm2-f13.google.com ([74.125.225.141])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7UdA-0000000DtoQ-2puK
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 09:11:42 +0000
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49e71974de4so159485e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 02:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789722697; x=1790327497; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yZ/vqBSgFHqCJoAqatA3IE2jvlq836FlV9wvuCTBolI=;
        b=eteVM4DkX2YdJStF8RN9lDBRWoKHT22ScfaP9vhGkY0UguBsFmgxKL0LFMpwUp6Bj1
         ps3xCDy0HxFpHis08xgsyjutMryP2SuamgnHdIbVnPF+86tq8lYDK12wagzhY9GLAcdh
         u3PuRN6MCEtGWIVic1R4ilpQMvjqlFz9Iyk+Kw9W9zb6tAXnospEX6dHh2kj3u6qqxba
         OFIBJKmZB33aU0jHis0i7/bzdfcmAjJY6gR5CyDXTN42Y/hrpzBZyU3YgoJ4Twtphzms
         vmY+gkraw63QHwzpROZmCIyzK1lxnbqBtDL1KJQoxJRfKkgQ7n1+XgboBCy8n7mkviPp
         cjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789722697; x=1790327497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yZ/vqBSgFHqCJoAqatA3IE2jvlq836FlV9wvuCTBolI=;
        b=WNraOVk8ynQDp8/x04KKky0npevAqiE+IjKXP6z436bXLUMaB+5/dQKLLoNrkZhWys
         iOHYQHcge+JD0F2htu8GJxcTXRSaXF7V/5aO3vOpVrsqlwJXcn0bHXA4xdGTkzraaPIP
         CpvZ77XIkQ1olcwAbYN8CwLHa3hcjZ5k835EJYD+1f1yAeK6mN1PEIfGdPRYP9oMLxYY
         iRvo1JIU0boatKEgl41Gb9Bq8zo2dHIc2uAHecd80oKXY0ejjZ7mtEmci1AhQJtvXAuK
         cdk0EGGZrrJ6RZB8of0b6cEwnUYBWkcyqTp1RSTxJG/9Ct3vZeTk3wCBEZm40CMHfiZX
         KYBA==
X-Forwarded-Encrypted: i=1; AKwUvBxc9fyl3OmEfFsmZlRYQ2F0rZWeE5ZgmBAjbBdSFGbcQMY5bndIWtH+S2JXiTsPIgakot0Ov+hmrc0WwyNWiQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nLXRZdv2YyZKWLjpAtaYgISc+fUOzCnBJI6g1gA/MoOGR1DIWD
	ATyX+m5tuYO4J7rGc3F4Y48ekr5+Dp23zQX6j13CMd8Tfk4kf0o2fKbrrZUW/w==
X-Gm-Gg: AYBFou1+PZDe/BD6me0lQnlr0DNfXCb4n7O7G2sam7+FnzhZcHJJvIpC1FUrp7NPBXn
	AcHGNakWsZNdbS0Z4K1PVprNxthqmtL7N3Q+V/0GRwlwA7MLT0gk7cHurwCbchA9L4ZUagSR+7/
	RXccRqPLUrXJ7X2JuYgUjFdFJ30p/yIaDgvNhvVCqdDx/MdQPhSd9fRF6UqE+/K8GF5FPxvOp5D
	FOd215d6rzE2ijfrbd2tHRHXquGyGE2E+STf5VfOSQbBhXppU3ql3IHUJ56ppOC/n7n62iP4O/G
	/l47kI/t3NvjwJMS0qY2SlLv6RDiLb6pp6ghINtvL660hRuWyvJKzOSCr90iG3WY1OPu4iNc2or
	/Asfu04/NarUt1p+IbpVXf53AhObIVWHSg5crwnA8Bb1aZxhAaNuCRd0O/rpuXpoqPgebmIMfWw
	4vFNCooWKhnEXbdrZXBlNlCPsZyLPmmagO+jvokIoRcsx2e8FCGMjXQbZEOzhBkC/iBnt9Ac/iG
	nnEJqc2/bXiPP/8Df1SovcF1byIpGuPuiypALotx0WXsojApMTq02mI84yApXnWOA+2bocMGOOO
	cGhV
X-Received: by 2002:a05:600c:609b:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49fc7f2bdc8mr18281725e9.2.1789722696430;
        Fri, 18 Sep 2026 02:11:36 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B829B006E521A2A508563A3.dsl.pool.telekom.hu. [2001:4c4e:1b82:9b00:6e52:1a2a:5085:63a3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fc7cfd1dasm37167425e9.9.2026.09.18.02.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 02:11:35 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
Date: Fri, 18 Sep 2026 11:10:32 +0200
Message-ID: <20260918091032.15593-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_021140_742613_A421799B 
X-CRM114-Status: GOOD (  11.37  )
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

Hi Sebastian,

With this patch applied, the series fails to build when dwc3 is
host-only and USB_GADGET is either disabled, or a module while the
glue is built in. I built it on top of v7.3-rc1 for arm64 (allnoconfig
plus a fragment, gcc 13.3) with USB=y, USB_DWC3=y, USB_DWC3_HOST=y,
USB_DWC3_ROCKCHIP=y and USB_GADGET unset:

  aarch64-linux-gnu-ld: drivers/usb/dwc3/dwc3-rockchip.o: in function `dwc3_rockchip_set_role':
  dwc3-rockchip.c:(.text+0x270): undefined reference to `usb_udc_vbus_handler'

With USB_DWC3=m and USB_DWC3_ROCKCHIP=m, modpost reports
usb_udc_vbus_handler as undefined. With USB_GADGET=m and the glue
built in, the link error is the same. With patches 1-4 only, all
three configs build.

dwc3_rockchip_vbus_handler() checks dwc->gadget only at runtime, so
the call to usb_udc_vbus_handler() is always compiled in. That
function is only built with USB_GADGET (drivers/usb/gadget/udc/core.c)
and has no stub in include/linux/usb/gadget.h, and USB_DWC3_ROCKCHIP
does not depend on the gadget side.

The same test run also shows that the two EXPORT_TRACEPOINT_SYMBOL_GPL
lines in 4/5 fix the modpost error I reported on v14. With them
dropped, dwc3=y/glue=m (the v14 case) and dwc3=m/glue=m, both with
tracing, fail with the same four undefined tracepoint symbols.

This was a build test only; I did not run anything on a board. An LLM
assistant wrote the build script and helped draft this mail.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
