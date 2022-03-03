Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C88CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 16:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8VJYgGNXB6UtiniHMwZoYRFg7B5iyie2r8ZtTN9Vo4=; b=doFYyTij7Oiwre
	pS9sJb95nlqJSwTBwATDUcBVLmTLHeCrDyJqrg2vq2qPu7OnLvPxGC4ypdwSdn4gpE197IpYrhalR
	8snLd86vxqbFZ8l+ojYe84i7tQ9H15pm/7rYYXSDVrM24JF0kMt3D/6z+22vrnXn84nzlHkGGFWoW
	hOMpLun+y7YB7fwHOeA9Mdnaa955zk4Jh2FJXtsTStgma5wqtUgPmyiaz5m7sSdtr87Qv1Ph2s2hj
	Sx9Tispl4MXC/CyHk3by4Q8A+KxZSi9nLT12b3wOrU32QTxwZrbGUaffrqe54w5UKJLOmd5U1//DY
	/ljdekG8W/5JAS+W4kYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPo95-0076JX-DZ; Thu, 03 Mar 2022 16:17:39 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPnz9-0072fV-Mx; Thu, 03 Mar 2022 16:07:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646323621;
 bh=D9W07+OUMPXR+k9aCYXbl5HFYe+LbU3RKRHJ4qCmUZs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AUl5B72MxoLUWFdMwnZ7l+X12NdvFwz2rYRZXJRrsnRTibYOr37GMhec0EKGe0hPV
 F0Vryvk81TDdnfaJjwOmOpjLg+jXZEbGHoruSgORGquaRF70SSdwk+f4Bgfbvn9l9G
 4VBjeF6JMyf9kUee8e3yYCZwHZz8Zh2yNiHmWVNg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.125] ([217.61.154.125]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Thu, 3 Mar 2022
 17:07:01 +0100
MIME-Version: 1.0
Message-ID: <trinity-e24fc9d8-680d-43e4-bc2a-9a3cc7d43138-1646323621559@3c-app-gmx-bs69>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Date: Thu, 3 Mar 2022 17:07:01 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220225075150.2729401-23-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:U5wBZdbza9VwWSnL2Fb/j5WKWmiu06uBo7QibEBguykIkwt7nMKuSqoQTfEekVKnR75KK
 qAtXS1kKXTbWjJXW/t/jjRrhq3gv/CeiVeIuYSvdcVoc7OzZk7GSUcIOvQZD5M1UT2xfVcrI0NPi
 9bCLXlld6yvNiefpjlqGrZnRa6GpXuVFXfdMgQqmAWUTvwy2EsZQb6eKSG/ZurDmP13S12aZGdwc
 L7S4d94Fm2Jdpz3VYvZQDp7Kufu/NS42cIOeYFlFfwN0paqnc0buptBlVcZlKPywFDP9g6LHgUiX
 K0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:qf+KSkywVP0=:JpcIqLcBRZBQNiLw8+A4la
 tiqpbqm6gA5oF3Y0T++yP1jdH443sT//j7UKXJ/CF4m4jXwx61MDkQex5e0Z5BY2G1cIJWMJW
 Ww+ofziD4r3yUpD+uhNJJk3gTW4eswSpmLvY0cwvGe61LLf1lq0jCUJIAw9w/4wdQf0FToS/0
 CnurClPnc3A8qkz5t6TRdIiocPH5rVk9GOum6m7MtvekiRjtJ+6cZZOfQjgZPUpM2kIwaiB5B
 XzAny3uYO04ndJ6NnxwMQf66BvEaBc6g5CUxTXJCRlQJ0FXe7QWlmbxcCPZdjpCwoqy6UU9J+
 ipRjFAD+rqTiiSbIpdZOJT8efLdElV4PlEVKY9Ug1/gfNree7QrfDQQstk3UfJMHAuDqp0wOQ
 AVzZjG4+ir5/PmCsKirIwKjJVzELsK06t4ctIHrsV7cYUBuDQI4hOI+7Ktj+wjLrCBDewJycw
 NatU87zOZUyX7yMJjYXcjVrc4vyTVnHCC3y3p4U75FOgbqES2fbtUEIYZHRKp9DfKyJKZ+lEc
 xpdSh81+mThatPwn9qW9j4boQ8UPaM2+/H62weOFR8vAiL4Sv4K6dsNwG3bJjBtUmfSIx9Egv
 +bYlQrmYhwRNSXoiuRr0zA950wToiif/re86r8e7ecExmqHYte4MUhVky8AsZ5bGz8iDYmVtx
 6N+lZ/I+HLK2xSUdS8XQ7mpJDHZpzSswtONauWMKO+AOejB88T+pOZXyqZSp/9VhijBPTxQEt
 uWKbXg0GEtzWShS3loX/eVmHHvLOgWd7X56MhqeCsw8B/ye9V63ZvOMPQq2n3OQ8H+2Wzn9xN
 yYP1KlJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_080724_067332_085BDE60 
X-CRM114-Status: UNSURE (   6.04  )
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

Tested this Series on my rk3568 Bananapi R2 Pro v00

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
