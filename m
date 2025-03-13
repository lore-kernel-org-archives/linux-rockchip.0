Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5769C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DH/saWwM2/7+RaauTt5mRQmasMX88BbmPMiuY/dpcZo=; b=n8UuxvG095fARy
	5s/dLcoIAi7s0Q6xMTT/5r68BPnaqBGQZtx0XY6YaVtVKadZx63A0/KeaTeMW6rIlYpNa2uTgjSpv
	9j77Rmp5LwteEp7wYC05PY8NLW7+Qd+C3gLgvZMhuXUxt7DNzwV/B0qHbeVm79ruqgZMf0jccrbpy
	1qG2y5qs+AYTufqjxj5j7s9IHhRaIbYxcw0qEMVVZMrMpnnhKqC+E8H7+uzP7ZS5n+08WZ2eLuBO1
	EvLrRe1vXd5oaGV5rTFxuwHAwQTBHMDF2TU5fdJCSxPXZLwH0kllkPmZTC+2EEDLfUepROxrEvhCH
	hYdQkNNBdvcN33EDxB4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsjJw-0000000BUsY-0N0I;
	Thu, 13 Mar 2025 14:14:00 +0000
Received: from haruka.juszkiewicz.com.pl ([185.243.53.191])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsjJn-0000000BUrm-0puQ
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Mar 2025 14:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1741875226;
	bh=WVIkGMMTE+yjuk9WuyuE2jdEj9KMWNM3ktIylZ77YRc=;
	h=Date:To:From:Subject:From;
	b=2gurJOimlRKeFmZqmBNlR8IvP5a2w/293FG5k85aLZxNJdlk4q/M5zKA/sGL1lTHB
	 rMi4LguB5rt5PSBW8Sr3xOXDgFH3OXQrgoNCZoSb25zT6PjrsIeCweGoAShBH4lfcD
	 9/CITfAGd7TmRSf2xLtB9iZdHdN/VfGf9HhtLeuGfBGnBQy8I/nI1ktUuL1xWyMSgq
	 QvR6tz13dOej2FWWybip7cQRbLHZwNt2YIl7JPkj++VzTfjylRaj7D1LlnSMQZJKlB
	 ot8U/TtImfh3f8AINaIwAR7yFkwXzGGH2Hf8mzZe9hICFsk/5n6xtT0P/U2ejj22Q8
	 05z8i9dwODAPw==
Received: from utena.juszkiewicz.com.pl (utena.juszkiewicz.com.pl [158.101.208.177])
	by haruka.juszkiewicz.com.pl (Postfix) with ESMTPSA id DBAFD1FA20;
	Thu, 13 Mar 2025 15:13:46 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4998C41471;
	Thu, 13 Mar 2025 15:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juszkiewicz.com.pl;
	s=mail; t=1741875225; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:content-language;
	bh=4yjAx+rW+7trFbsPYa9MmImclfe7bQsZLf7dTmKiJcM=;
	b=kmDzXI9GA7jh0dch8uiu4GO0ayGwJK+658IgG/cDjUrUddAByoRwNVAgHeUBpQCa7z/QYw
	xEgITZhj55AbT1KcbF6LJh6WunFXMK9S3jlI/2vvxoHfXp84d0WnZLE1AozqBKDnBptsAP
	jY5fP0hXOT693v2O+8a4vXtqrwVtte3XxkCJ8PEOuMItdM2hCuOEvx4p1NZc29s1GNWN3D
	tzvs6B+eZXufiam3oSMoNJ2aQyeH7Q65pBDUcvbsmxl9lqqXh5a2GsLNq6/TH5AUhwtBaB
	oKvVtcbj5+xcle5/wZ9CkUZS7/4ugiCYeQrn6/hDsfoKYBcTDlXQwqgRloaalw==
Message-ID: <e7c6bdd7-47ed-484e-af26-83b9cc531561@juszkiewicz.com.pl>
Date: Thu, 13 Mar 2025 15:13:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-rockchip@lists.infradead.org,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Content-Language: pl-PL, en-GB
Subject: rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err
 at vp0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_071351_408840_EE8C2994 
X-CRM114-Status: UNSURE (   3.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I took my FriendlyELEC NanoPC-T6 LTS back to operation. Installed Fedora 
rawhide on it and trying to get screen working.

Running 6.14-rc6 on it. Kernel log is full of this message:

rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp0

/sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/modes 
shows list of resolutions available on my 10" screen. Monitor says 
"HDMI: no signal".

I remember having screen running once with some set of out-of-tree 
patches but iirc it was before HDMI0 support was present in mainline.

Where I should look?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
