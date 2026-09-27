Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F16CC9832F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2026 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gq8XhrQ2MLGv8rWG6L0i5QTK8ZqLUyHyOK6gWj9Aebk=; b=kVl10crR1rf6Wg
	HJMiZQjmNCOC0YA4DXGxmmGpQxMKCKc2UALRRlQXgk+KNSEFJpNCHDSr1kkgz2XQGjJon3i5FrQ06
	ZM1OCkhAGWnPS3dfWdj/FTzTMSC9Qtcm51tVb3KvHIrcPwo7+44XD2p6si9zgNjG4mMhTWyCgkl+p
	t6nTrQXCKxJYxOKWZM+MjjBUTuYehqDwvidL6uovrzNsDyOhwSDfYX4nXd2saJ8GCn883/dFvELgG
	P5Qe66va6xbFmaZYQf0PMFivj7W88TIsryyjVyfwVF+MIgcaSgOWexmvpHKkwVdEV/WQwBHAB2XA3
	T6oEILyCXm5YYR8EL8XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnaf-0000000GHXk-2Qxk;
	Sun, 27 Sep 2026 12:02:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnae-0000000GHXB-1YWh
	for linux-rockchip@bombadil.infradead.org;
	Sun, 27 Sep 2026 12:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=01429hMeoTXrkDg6gix/EcLJWWvM5W0z994eSFJkqXY=; b=M5VtxQYn4rcQ36w8NwtDJSbjBC
	gqlsKPH2PkVoiN3HA5BQYsR8nxbllT5tXBBvoREyr0a3nck/f9YDxbkMVk17dclpJG8TeqXU0V8Dr
	QXL4ZOpPc+Z+KCv6m0TDzNrDswbm4Cy26kHBho6hi3kVJ5Z/vB7jLZm8MmwqIQUWekOvBsYOcomqo
	kb61R3XaBkGVNZXupLrHOkkbu6Cg8zneGH20x3knCf1J8ZlzhA8JUVvG8+utOBUHuotQkazYmEjq+
	yD83AUNKm37SbiaT96wCkyvnoG4TW5FPJdIivgGZl46Xc9FaomT+LqjQnbAYuHLsSPbUXZATG8BZM
	CKGoO9/A==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xAnaa-00000000hdd-2qSJ
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Sep 2026 12:02:42 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-484399babcaso213002f8f.0
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2026 05:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790510558; x=1791115358; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=01429hMeoTXrkDg6gix/EcLJWWvM5W0z994eSFJkqXY=;
        b=s0CPq+ih8a1WkM+d9jTRSaExJXN+j9VXAAcidRtPJ5WiQC0qwc1jqLhg9EkE6PiVYe
         LFCQQV3SQkCBSBM+f1zHnSDg3iI1Nsv4TXulPxrCeyOHTI+n0GqXBAnQGPnIDRdo0pvw
         EXXpskGR35PmKGgV24aL1Rhk33KWXZfO7ngadWxKDkHT4dT7BJ5lUWzDXZJDMwaa1/d+
         roYKSQCUmNd+gVWYHdfrjjg0LP96u5t4eSOcXZ1PklGs0iTve5ITzdsd+zrPp88bGK/W
         9pT+C1xpVYV/TY7NAf7rhPSBYxwGnOdWEkPfmmp9qvk3kb4dMlgW8FX/wFaIaD3VLE3i
         4wHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790510558; x=1791115358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=01429hMeoTXrkDg6gix/EcLJWWvM5W0z994eSFJkqXY=;
        b=dUqbjWmu2tvcUoz4ptlGiqODu410mjCGqgTaVEEiB3DrFVi8kZbBH+gMVOMn7Y5bIt
         6QI8mmoTLUj9qnaErtqomH4+Dszt+eYDy+rm6r80HPQ25jSmMH5qwxkigqph6vY61UPZ
         PRtUqqFGpCWu60bth9gGyRunvpLfiq3uu4x6TCREDzqpJLXw9v+Sat2jXjQ/MPqm5YJu
         zPSIzsHicnP+m8F0PwpKfF+v7UerfT173KGBqAJoMMpmddCCxztpNg5twKvVTFj0Ddjz
         epEbeXd/ou81YcRAjQLwmiTsXoemf5g5ssqpRN58xabJ4YAXXag/oOOPbxXLsVMJxIkJ
         Rv8g==
X-Forwarded-Encrypted: i=1; AKwUvBxprHHVd3JyRwJs5gu4AUYd42Tpcm9z5excDnMyaFzfD1503DCvhEDsnwA+GxQ1k1HPQJqckeD5PDqdqMoglw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJFZLotSmrhgLkMYaamht7RwpUeFinygkmp6gV397bUBn9NoJxb
	MIxmrgHJWHhIv/C3YkwvUtwIm/0umSPhHtmYkQVLNzaIMRnWwePLsRV876Ac/xMm
X-Gm-Gg: AYBFou2Uyiukb7SupQDUjXr8UI0ism4ynKBX8G05jgka9cPM+DaxVtvrTgsyXhY7c+E
	39L9xjbHL0FGhhI+x+0K+bc5xdJiWxRzBeTZk0BPoghIcFYLD+VOMvfJRoYG1FRsZ5MFPRLPUg/
	D158L+LE0GoxpAhRN8At4kaSY4SQ1vaa+CXhIOujuQmAuedpX2Fi1wXoeOvttmuvANQamJribnm
	0dXhMS8eQ52MuF0UhXh4z1242aRXRVTnQxp/mi5Z5NE8gu1vZ5T5mJFF0ySzojQ8X02uT+ldu6D
	IC3dlidUrBrrQslTkg0ze5HX9aFVZ7lCHyl6l16RPMP0sMEKQHPjNnvcmtZoYf6I3MNqb7qC8RH
	KisaY1ZjKgIcKqSTF3dY+1I0LBzJcGPmU7DSVQ3ZfsEsa0dl+Ru+Se7V9xHGVoPrdDq4VA8xeNX
	qcPI+eWCeiimF4RNnOU8gmFDbGvG0pAJ07AXWup3nKclJrPBNANm2Sk5VWg28NSZGuo7rt2sE8r
	NSvzWqNO24YV8w8s5i0wr8qr8N/EshY6/H2JYBa4lBIpNNtqNafxZnunjd7qBK50Argm2UbqnqM
	Gak=
X-Received: by 2002:a05:6000:481e:b0:485:8df0:dca with SMTP id ffacd0b85a97d-4887abb09d2mr14521475f8f.3.1790510558071;
        Sun, 27 Sep 2026 05:02:38 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B89A9009A7C72AB6C68D3F9.dsl.pool.telekom.hu. [2001:4c4e:1b89:a900:9a7c:72ab:6c68:d3f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a6456f8sm19655495f8f.26.2026.09.27.05.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 05:02:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v16 0/6] usb: dwc3: introduce Rockchip glue driver
Date: Sun, 27 Sep 2026 14:02:29 +0200
Message-ID: <20260927120229.9664-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_130241_113572_04004D6B 
X-CRM114-Status: GOOD (  14.72  )
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

My tags on 1/6-4/6 are from v14. Since then 2/6 changed its PM ops
(v15 and v16) and 4/6 gained the two tracepoint exports, so I re-ran
my tests on v16. The tags still stand, and 5/6 plus the Kconfig line
in 6/6 fix the build failure I reported on v15 5/5 (posted as v1)
[1].

I tested on an Orange Pi 5 Plus with the same base and the same
local DT as my v14 report [2] (rockchip-devel at ea51774c5c42,
7.2-rc7). The v14 glue patches were replaced by v16 2/6, 4/6, 5/6
and 6/6; 1/6 and 3/6 have the same patch-id as in v14, so they
stayed. The glue is built in, with PM and USB_GADGET enabled.

The sink is different this time: a Dell 2408WFP at 1920x1200 on a
USB-C to DP cable, not the Epico converter into the Samsung 4K120
from [2]. This cable also has a GsCooLink chip (VID 0x3679), and its
DPCD (1.2, HBR2 x4) is newer than the 2009 monitor, so the link
partner is most likely that chip, not the monitor.

I ran the same test on my daily kernel (v14 glue, plus a locally
patched tcpm module) and on the v16 kernel. Both gave the same
result:
- dwc3-rockchip bound to fc000000.usb and fc400000.usb
- DP alt mode active (svid ff01), link trained at HBR2 x4
- cable unplug/replug, and replug with the connector flipped
  (port0 orientation changed in sysfs): DP-1 connected again about
  2 s after each replug
- the xHCI on fc000000.usb went away on each unplug and came back on
  each replug, and the cable's billboard device enumerated again
- no messages from dwc3, dwc3-rockchip or the usbdp PHY

With this config, none of the v14 to v16 changes alter what runs on
the board. So this run confirms v16 on hardware, but it cannot tell
v16 from v14.

Build test on v7.3-rc1, arm64 allnoconfig plus a fragment, gcc 13.3.
Host-only dwc3 with USB_GADGET unset now builds, with the glue built
in and as a module. USB_GADGET=m with the glue built in can no
longer be selected. Without the two tracepoint exports in 4/6, the
v14 modpost error comes back, so they are still needed. All builds
that passed had no warnings. They all had PM_SLEEP disabled (PM
itself cannot be, ARCH_ROCKCHIP selects it), so they also built the
new PM ops in 2/6 without sleep support.

Gadget mode (6/6) I tested separately; the results and my tag are
in my reply to 6/6. Not tested: system suspend/resume, a 4K/HDR sink
on USB-C this time, and USB devices in host mode on the USB-C port
other than the cable's own billboard. 5/6 was only build-tested. I
am not adding any tags to 1/6-5/6 here.

An LLM assistant built the v16 test kernel (reverting the three
changed v14 glue commits and applying v16), wrote and ran the build
test, wrote the board test script, compared the logs and drafted
this mail. I ran the board test and did the cable pulls and flips.

[1] https://lore.kernel.org/all/20260918091032.15593-1-royalnet026@gmail.com/
[2] https://lore.kernel.org/all/20260815121608.64818-1-royalnet026@gmail.com/

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
