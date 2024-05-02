Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38196C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 08:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/WLPhSL6V0bRTll16gZGIknyuWqM5OW04r/YLu/tvNI=; b=gpKO6T0mcDqH+a
	vb9OedTPXdhInyH+wDBuYdlI8JZs0X30zYHnQ6dMtHAHtwSHiT+8lg/dRWbnhE5PiLhVbD3IL509V
	Cfc6u8xDCGcemKFP6wFa+IzTq4xQ7I1WJUG0/uz1AQACr8Z4NxOA2jJ4jrRJ1hRr9UrYBLxoFkQyZ
	mjC+NMhLKq1Mv1qDFpT3dxayU8l84DitKRd3ZHqcQ0ttqnXo13Op6uhRWdmdCZYPJwlNyNNMEX2ja
	wDtaQYQ83S/xXGgP5VGxC7aPA3gGZfXFYWt0U7WFFpO1Aeh/vyjzLi18+ZQrYikNWB6sYHZT3AIEc
	wlYwlY89EEXmuAD2uvhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Rk6-0000000ByXr-0FnE;
	Thu, 02 May 2024 08:24:38 +0000
Received: from [137.220.233.92] (helo=mail0.gey970.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Rk2-0000000ByXI-35hR
	for linux-rockchip@lists.infradead.org;
	Thu, 02 May 2024 08:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=gey970.com;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@gey970.com;
 bh=SQPtC+DXG2r8fkjKo6tmowka8DvSSkXYNyqsnMIBNxY=;
 b=kdcYe6CPCgjkUS0OdKk57mPCtU585sWObv8iiBrxITSxv/FYqCp+krIiXVB+3Fmu46f/QQTiv0gd
   TMml+Kb0uqX80JHakRCCyfjJGNSl5TQtjvKwWKNKGql6VvefMgVduQIgzWdi6SSkNHyqW+68+Jmq
   GSSUjxSH7wbhzeJFOds=
Message-ID: <1c2fcc7271ab4831393b7d192def3768@gey970.com>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@gey970.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+LIOOCq+ODvOODieOAkSDjgYrmlK8=?=
	=?utf-8?B?5omV44GE5LqI5a6a6YeR6aGN44Gu44GU5qGI5YaF?=
Date: Thu, 02 May 2024 16:14:20 +0800
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_012435_273436_E62C2208 
X-CRM114-Status: UNSURE (  -0.00  )
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

5LiJIOS6lSDkvY8g5Y+LIOOCqyDjg7wg44OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4DQoN
CuOBk+OBruOBn+OBs+OBr+S4iSDkupUg5L2PIOWPiyDjgqsg44O8IOODieOCkuOBlOWIqeeUqOOB
hOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5LiL
6KiY44Gu44GU5Yip55So54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l
44KJ44Gb44GE44Gf44GX44G+44GZ44CCDQoNCuKAu+acrOODoeODvOODq+OBr+OAgeOBlOWIqeeU
qOODu+iri+axguOCkueiuuWumuOBmeOCi+OCguOBruOBp+OBr+OBguOCiuOBvuOBm+OCk+OAgg0K
44GU5Yip55So5pel5pmC77yaMjAyNCAvIDA1IC8gMDEgICAgICAyMyA6IDE4DQrjgZTliKnnlKjl
oLTmiYDvvJrjgrvjg5bjg7Mt44Kk44Os44OW44OzIOWNg+S7o+eUsOS4gOODhOapiyAxIOS4geeb
ruW6lw0K44GU5Yip55So6YeR6aGN77yaOSwgNTgw5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOB
l+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOBr+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS
44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDjg7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN
44GX44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL3ByaW50ZXJvcmRlci5jb20NCg0K77yc44GU
5rOo5oSP54K577yeDQrigLvvvJHvvI7mnKzjgrXjg7zjg5Pjgrnjga/jgIHjgYrlrqLmp5jjga7k
uIkg5LqVIOS9jyDlj4sg44KrIOODvCDjg4njga7jgZTliKnnlKjnhafkvJrjgYzooYzjgo/jgozj
gZ/loLTlkIjjgIENCuS4iSDkupUg5L2PIOWPiyBORVTjgavjgZTnmbvpjLLjgYTjgZ/jgaDjgYTj
gabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnjgovjgrXjg7zj
g5PjgrnjgafjgZnjgIINCuKAu++8ku+8juOBlOWlkee0hOOCreODo+ODs+OCu+ODq+OBqOOBquOB
o+OBn+WgtOWQiOOBruOBiuWPlua2iOOBl+aDheWgseOBr+mFjeS/oeOBleOCjOOBvuOBm+OCk+OA
gg0K4oC777yT77yO5LiJIOS6lSDkvY8g5Y+LIFZpc2Hjg5fjg6rjg5rjgqTjg4njgqvjg7zjg4nl
j4rjgbPkuInkupXkvY/lj4vjg5Djg7zjg4Hjg6Pjg6vjgqsg44O8IOODieOBruOBlOWIqeeUqOWI
huOCguWQq+OBv+OBvuOBmeOAgg0K4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUDQrilqDnmbog6KGMIOiAheKWoA0K5LiJIOS6
lSDkvY8g5Y+LIOOCqyDjg7wg44OJ5qCq5byP5Lya56S+DQrjgJIxMzUtMDA2MQ0K5p2x5Lqs6YO9
5rGf5p2x5Yy66LGK5rSyMuS4geebrjLnlaozMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
