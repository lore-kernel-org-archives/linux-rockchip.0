Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A45C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:32:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2DE9A60F5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:32:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2DE9A60F5D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rclnumaSqqsc/VRBBkOTQ+IZOfA5m5jeRYat9U/TaE=; b=26YkidvGf3Np7Z
	XOqmvLs1dxSXBXVb4R4YJtd+ZNDAf9zdgYmoyZP0PK0BXQjr3fUZ3Kv8fvDF+T4SCK/PJwXMjqDew
	laqrd2IhuhuPNhAzk4nH05lMIHwaTkWDwYb5qnIcegxf855aXJmfAcdtouffrYFN9G0o2Y3OuYr6A
	39p95MEMg9N+0qTR1mwHqPrDBjg/FsisAiJMoQDHjj9eOHR+l6HmZMghevE3pFtYc7RG/m/U4LOtR
	S993yNwOzdULBcHUUdjcd9naN0CsJw1BqUKh7HUAMtcnEvciK8+emNK5MDYXFXNVb+SCHqyPage1e
	mxA/r6r+WyOwI+KyK71w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSKLe-001wVE-00; Mon, 20 Sep 2021 14:32:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKHz-001uj5-SX
 for linux-rockchip@bombadil.infradead.org; Mon, 20 Sep 2021 14:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=xrObQTAxJJAoKCzZVDdN77b6O6RdP3PBPBwKaw9qYFg=; b=Oje+2Ts+hSUbNhgzC27RHaHcra
 DbAXnkOS0+IcoQ+gjsWmtNXWHjczw+wShym69mrHJ+gqGB4rfwaoInLX83erDIkJDxYCKCYAGd3Qd
 WeKOHjU4rjoLXyRvasrSZPeGdPr/iYdDcS1R991tJ6nZcEVP4UM5SnrIRo8JwPvGdxbI4t2s+QngS
 5iGUHZfpEdJr1PpiSm7ZtmurYQRA2JUGKiNANV84VWlwle30Tpb3rwJg+5hcRXo6MF4gT2yjOfVxr
 Kj4stj8pzk8oBU2OwnQaBz2Q36nE89i7A4ONIBugz/m4dYcvhnjErof/Zy+nT10arYfy218ZyDlT4
 s8inhXjQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKHw-004Wom-L6
 for linux-rockchip@lists.infradead.org; Mon, 20 Sep 2021 14:28:58 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mSKHs-0005O5-6O; Mon, 20 Sep 2021 16:28:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com
Subject: Re: [PATCH v3] arm64: dts: rockchip: Correct regulator for USB host
Date: Mon, 20 Sep 2021 16:28:46 +0200
Message-Id: <163214478703.1547258.2838838549047701769.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210916190938.6175-1-macroalpha82@gmail.com>
References: <20210916190938.6175-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_152856_809153_31378F5C 
X-CRM114-Status: GOOD (  12.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 16 Sep 2021 14:09:38 -0500, Chris Morgan wrote:
> When writing a battery driver, I noticed that the USB voltage was ~3.7V
> while running off of battery on a mainline kernel. After consulting the
> schematics for the Odroid Go Advance, it appears that the BOOST
> regulator is involved in the process of powering the USB host. Power
> for the USB host goes from the vccsys regulator into the PMIC, then out
> from the PMIC BOOST regulator into the FC9516A (which is controlled by
> GPIO), which then feeds power into the USB host. I named the regulator
> usb_midu because on the datasheet the pin is described as "MIDU/BOOST -
> middle point of USB power supply / boost output". Making these changes
> solved the USB power issue on battery and I'm now reading approximately
> 5v.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct regulator for USB host
      commit: 4b90e34d9a3ba25a62e4ea42d63fbe6c7fb11ed1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
