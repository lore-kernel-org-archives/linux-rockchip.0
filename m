Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58FA7D74941
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 21:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2JeRJ9CCWI+nVM4vjyfpgjtrY0rr+1XtKuilRG7sVg=; b=X2Yc7Kp0oCuFfu
	eCQ8MX9+BN1oH+zhUFy6OqWuX6wg37sizH0MS8bsWHL9lGuuO7sMnI9T3x0tjyFi5YfCHiFEODYRN
	ng/NH7Jsi+9H4uQEv3wNjaURjIM/CFYf9bDvo6DMbuWlP3GophbhChn7xPF+U2E+sP4By+nXksE1/
	x9h0UuvsdryNxuXdJwLz2v4Rp0Jq5Ef8ONXjvS+nQ2PVK1HjYlzques+LHcON7+UWToL2iu864QGr
	NwHI5OISViPo7RP2RLeISP0xL4GxGNVfHyBPMDwdKgSRziQ+sjmU6VZxWlOxcKS3sorEj54L0p+ng
	xtW0T+Y915eKr+NUCDDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5tOI-0000000FuYd-2rrd;
	Tue, 29 Oct 2024 21:04:38 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5soJ-0000000Fm9w-0nTX
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 20:27:28 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7180bd5b79dso2379949a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2024 13:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730233644; x=1730838444; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/5C6RNVdpPOMV+ompnRbmfGF79IXxDl6fVLaU9AkhfU=;
        b=nXDYk9nyWSQ7DkwRA2dM8G5gErqtAbkf8DFfQMxbX9PR8/td2MWgt9kEB22+7iPw7S
         Dhzk7kRmYHhTHzfCUS7/btrSHQBtvY9FiQdbkN3lURNjWZN6DUlUCRcEhNEmc/ZdTXs9
         ASN0sf/e8h8SrvDMaU4AT/+VFLXuTHB2pd/oCPOj2OxQ7uE4SKRXu9oKmzw8Z2WY7WeO
         69b+capnenNhxtAz49JOzoxf+fgEwEMjqfce7IG+5G/XiwLBj7cpF6OktALbYYnkLzFT
         eBnXb9M/O0jLN/dwtzU7Lo0qgTN/Wh36HTFxoaKR7akGxA1vcZvZTCARfRb5DdWOMIVi
         Pq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730233644; x=1730838444;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5C6RNVdpPOMV+ompnRbmfGF79IXxDl6fVLaU9AkhfU=;
        b=rrcdqJD9HdMhvddUEPta/+CsZ40JRB+PHAlai+n9vCL64P7N7L2Ww63X+OEBpmVRtY
         l3voONA9Ai5gt20neqtjh718cVolNMjxe/Wbgo9vRSDSlIrTEUTCeyoWSmDwK3XHWmvR
         DYWCJPBdbDCuYjhAyzJBxCLuC1yKkGjo6daoHPrQnA4pOtyDie831T8/JdUlUgQ8N/Sd
         /YGswlx8sk3tkYPkN3ByTUI44jZrLC8ayFZ5l3HHddluy6S5jobMJuLkvULbfYOruUhF
         2m15hqNVv5nEbpwrOTI56U7n7l0WcefH9ORTfj86XX/AA2XreBcLF2vmtvnCPGLYqYVd
         mquQ==
X-Gm-Message-State: AOJu0YyVlPplQYtbakVA7DSh8gEDN8kwE9cAXXgIyWYNUp90Vpt14T0F
	oxwoneEb16c/mr+Zf1/0lgoANVR6zLsF/g20jxbnO8wro43nS28azpsyvg==
X-Google-Smtp-Source: AGHT+IHf/L6/YOLZ+C2D8alVVPiEQL9lvjabcFg/tf84AF6Jr48CaY6FAxq/oVQhvom8CiUgjgCNMw==
X-Received: by 2002:a05:6830:411f:b0:703:7827:6a68 with SMTP id 46e09a7af769-71867f100abmr14041591a34.6.1730233644369;
        Tue, 29 Oct 2024 13:27:24 -0700 (PDT)
Received: from neuromancer. ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec18598bc9sm2482361eaf.12.2024.10.29.13.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 13:27:24 -0700 (PDT)
Message-ID: <6721452c.4a0a0220.38161e.8f5c@mx.google.com>
X-Google-Original-Message-ID: <ZyFFKmsFYQ82l0Hb@neuromancer.>
Date: Tue, 29 Oct 2024 15:27:22 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on
 Indiedroid Nova
References: <20241023164104.66282-3-macroalpha82@gmail.com>
 <20241024011454.1611-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024011454.1611-1-honyuenkwun@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_132727_249713_46684AC8 
X-CRM114-Status: GOOD (  13.99  )
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

On Wed, Oct 23, 2024 at 08:14:54PM -0500, Jimmy Hon wrote:
> >+	hdmi0-con {
> >+		compatible = "hdmi-connector";
> >+		type = "c";
> This should be type d, the Nova has a micro HDMI port, not a mini HDMI port.
> 
> 
> >+
> >+&hdmi0 {
> >+	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
> >+		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
> >+		    <&hdmim0_tx0_cec>;
> >+	pinctrl-names = "default";
> >+	status = "okay";
> >+};
> Why is the additional hdmim0_rx_hpdin needed? Is it supposed to represent
> HDMI0_TX_ON_H? I'm curious why this board needs it, when the other boards
> do not.
> 
> Jimmy
> 

You are correct about the port type, it is type d not type c.
As for the HDMI0_TX_ON_H, that pin is hooked up per the schematic so I
thought it prudent to define it in the device tree as such (this being
one of the very few boards I get to work on with actual schematics).

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
