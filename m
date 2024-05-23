Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3F7C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 18:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/eaMTHSMRMraqbrtIDcpUv3bxKukNep7rzBmbw71Jz4=; b=FNzLTaVyRNyK0J
	BQCcHzT0xbTqmlSXG26UWjMBd6sTIgo+xuqDxXgg6cY4LGTwrT+GjSuFLcIG7pO34T2R9RGdXZkBO
	18OWe0Br8hJpN3gsk5ulwxGN/ACvxDcYKSezr3WpkdtYA7qsgji8TjUz+3w+tBpXhBdYfkd+8aAb5
	3o65FL57X8Y1gCIZY4Zu7cN7I1RNi19QjgYrLYzr57y5Ef0tr7A5+PLvlYvQAoOomDRCuaEpp5zhD
	22U8F4G84/iVK1V7oXGf02t/GQMiFzupmU7snib0b2I7lMxdYoMzqLKJyZGN3nK3NMoqmWInRC5Jx
	T51LNDt6jsHhG1uz+sKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sACxG-00000006zZu-3QVW;
	Thu, 23 May 2024 18:14:18 +0000
Received: from [137.220.190.150] (helo=mail0.rws12.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sACxC-00000006zYL-3HH5
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 18:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=rws12.com;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@rws12.com;
 bh=aG9tjyocNjQwY6hehZ9x9ZVG40/Wxz3iAYrk8mLPoRA=;
 b=n9KF5aO0dXbHQnRqnP3lunJKsHqwnxmo6spB7JB441iZ9NILjf6Yrrt4wlYhEgoJbYQSqkmGNQqU
   /hNNI3WxnTqwUs9A9u8UhQ2pjHLD7k8H9+9SbN7B4DE6bPzGNt8ojVw9WfqD1/zaWeNT0sHkPZVx
   YA9LWAqPzGrMIFYbWNY=
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@rws12.com>
To: =?utf-8?B?bGludXgtcm9ja2NoaXA=?= <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR5rG65riI5a6M?=
	=?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Fri, 24 May 2024 02:03:57 +0800
Message-ID: <FEFFCMOAEHHCLPHFGGKFIFCHHPNJ.no-reply@rws12.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_111415_280615_6217BC5A 
X-CRM114-Status: UNSURE (  -0.02  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhICAgbGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZw0KDQrjgZPjga7jgZ/jgbPjga/kuInkupXkvY/lj4vj
gqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbj
gZTjgZbjgYTjgb7jgZnjgIINCuaYqOaXpeOAgeOBiuWuouanmOOBruOCr+ODrOOCuOODg+ODiOOC
q+ODvOODieOBp+a2iOiyu+aUr+WHuuOBjOeZuueUn+OBl+OBn+OBk+OBqOOCkuOBiuefpeOCieOB
m+OBhOOBn+OBl+OBvuOBmeOAgg0K44Gd44Gu5pSv5omV44GE44Gu6Kmz57Sw44Gv5qyh44Gu44Go
44GK44KK44Gn44GZ44CCDQogIOOBlCDliKkg55SoIOaXpSDmmYIg77yaIDIwMjTlubQ15pyIMjPm
l6UgMjM6NDkNCiAg44GUIOWIqSDnlKgg5aC0IOaJgCDvvJog5Y2D5Luj55Sw5LiA44OE5qmLIDMg
5LiB55uu5bqXICgg44K7IOODliDjg7Mg44KkIOODrCDjg5Yg44OzICkNCiAg44GUIOWIqSDnlKgg
6YeRIOmhjSDvvJogMTc1MzAg5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOBl+OBn+immuOBiOOB
jOOBquOBhOWgtOWQiOOBr+OAgeS7peS4i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OBl+OB
puOCr+ODrOOCuOODg+ODiCDjgqvjg7zjg4nmlK/miZXjgYTjga7mib/oqo3jgpLjgq3jg6Pjg7Pj
grvjg6vjgZfjgabjgY/jgaDjgZXjgYTjgIINCmh0dHBzOi8vbmVnaW5hc2lhLmNvbQ0KDQrkuIkg
5LqVIOS9jyDlj4sgTkVU44Gr44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE44KL44Oh44O844Or
44Ki44OJ44Os44K544G444GK55+l44KJ44Gb44GZ44KL44K144O844OT44K544Gn44GZ44CCDQot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4pagIOeZuiDooYwg6ICFIOKWoA0K
5LiJ5LqV5L2P5Y+L44Kr44O844OJ5qCqIOW8jyDkvJog56S+DQrjgJIxMzUtMDA2MSDmnbHkuqzp
g73msZ/mnbHljLrosYrmtLIy5LiB55uuMueVqjMx5Y+3DQpDb3B5cmlnaHQgQCBTdW1pdG9tbyBN
aXRzdWkgQ2FyZCBDb3Jwb3JhdGlvbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
