Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBCE6C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csO5Iwf+upFqDrys9YvwsA+B4NRQdlTJI3eC/+sVGJw=; b=ZI/reoi5R2E1gp
	MauLyOEPeYj1DDw9KqJSIJEn++ZbT0k1xotXZrK5jIzAq3ugm5gq9yiltfAQIBFUDuRne1cD/UDQS
	ApJ3bliQ2BF7pxrGdwEG//1x72Uu8qMWlhV8Iz1E+w+S2E03p7rsXdw1CYVqEJDidfqkHMYFkhfb6
	g9a5BWQLo1jY3U5sL4dZAq82oTpVEfs1eHRxrrThutpAHO0RzX3pnmM0Tyyywc1pyTmEjff+lSnHL
	O2lyyqADKwV/WEl7YGznMRt0G5SFViPh3AAYSijiWtaeYVZ6dcHwBHVfpzLE1AaJV/Su/zXN9DcOi
	eGP5C5ddU6ALnkKWAwPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCk7K-00CFGg-WE; Wed, 26 Jan 2022 15:21:51 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjqq-00C7IN-9b; Wed, 26 Jan 2022 15:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643209476;
 bh=B07kNwWF0kIcIyZ6tg5D4YW7GZgIj5AXzrRfXPucNcQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=X9LzyGpuPoVp0t3hSJ0Xl3UziLKB5dzY/1HEMNxBwlHlejt6arRHY7iTcChVppqAD
 FWTsXKqg2hjWgy+0WeWrUt2Hpi9fTB0DWSWaQpgKqNaac5vAZd4tp89tyxSaPgyelH
 lWIYZA3DzF3BtHpN4MERD1/nP9RtZ+QVpbibqQf8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.153.46] ([217.61.153.46]) by web-mail.gmx.net
 (3c-app-gmx-bap59.server.lan [172.19.172.129]) (via HTTP); Wed, 26 Jan 2022
 16:04:36 +0100
MIME-Version: 1.0
Message-ID: <trinity-e0e26df4-dbdf-4a86-be55-c8cd09fdf261-1643209476020@3c-app-gmx-bap59>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de
Subject: Aw: [PATCH 01/27] drm/encoder: Add of_graph port to struct drm_encoder
Date: Wed, 26 Jan 2022 16:04:36 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220126145549.617165-2-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-2-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:pJ03qsXxg/ND1T+WW4B6btBelzADVbwFkhV+6XlPJvuHKUwiCMdVEjHacAPO9CVvKiFuR
 XmrycinZn5gLrGbk01j4TWzVMn5BxyBqC9sfyx9WnUh7x0Fpm4WKDZcAdvbl7pksfh9kCWfsjGIb
 zwIRbiI3Teu7M3y5aodPKQKOCzo6qdeFOifGWMFAtfXZ1k4Mgvqczp4rvmqILwBvJXdoW34FW4vj
 Ut+Hq0oz+i5AJBt6/STHOUHi4stB/h3EQX1CJARkiltDFuvreCs26XTARgE870wbjj6UcrmcGa08
 IE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:gKQyj+bEKQQ=:sL27Q/7/Nt3+yHZ2wJWaV5
 HVRVHCiFpBCVj81X8LJNWCvuRlTkdtPURkjPX5CRrB5pWhbcFiwTXeGO7jqvbfwIuWYYWBkKV
 TWuPDVvz4dkc0W/N87Bg0rHFGgL0mAFQR4Tyd6UG9YFJRGGaq+6T0UpfZpCCXq7RtkPjuvpT0
 QdyPlKKzTZbc4WkyF9KIOQphh7V6kf8khkt2MxVBzyi+O4n5MsZTuh8ZCPbjKlQNm4eqhWl6J
 aNNKbU3/7+WX88wJrk2tdtqSc+CXmUSO4Ot3ZGjAvU4mQL3PUbp1V7PgGVbOYOx427jQMZoaz
 UtXbzhSuKw5Kh/Y+eEKFpe+3WqIcgLmjGcl2pjLkxIFNjK+plDLl8HaE/HFALpcuSn1xZRs6t
 gh9jkliWQcChFiDiaSe94nJKtoVgUvLzp5KKletIGQS/Pu7C8p81WraZufOfkBqcAqEIuVoHo
 Sj4ffxLEUUmNxrcb97fHC/PyKKXiUJ1izRR9e+KmUM2jjGlUvFOMRLybYr3QMqAf35slcRMHF
 Oss+/51Jo3NXL/BVEB8y69uT+AxcOQqtarCpqo6Jazg4Q1D0LNiUpsLQeAGYConHSfE5bZswE
 2lBbcrhv9NJhoWFwKV+I3etPrXkLP1FqJKVprh1VTO2Bj6/nzNrhOVzIl2tkx/o5uuttA8byt
 9vM39un04SnCWatrWdURroHSDgKeFCMGTmFISuObYrCSf+vfDR+38sylYxRBxfLsxKLgJh+6/
 X6mcaf7DTFBQyi3+GSg1QCNzW8XXobgQbOBT1d0SfBbX3cuqncDhWhBbS4Hd38zxj5ZsRmO02
 3ZLCJCybMkL8VNr+4uNVdxsyr11aQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_070448_699351_7295D0AC 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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

Hi

> Gesendet: Mittwoch, 26. Januar 2022 um 15:55 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> Betreff: [PATCH 01/27] drm/encoder: Add of_graph port to struct drm_encoder

Please use "git format-patch -vX ..." when creating your patches to make sure the version is set in every patch and not only the coverletter. That makes it easier to find Patch from specific version and shows version also in Patchwork where the coverletter is hidden

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
