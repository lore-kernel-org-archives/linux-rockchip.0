Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D28C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 May 2024 19:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Mime-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ogg6DYVhpRT/SQCFQRJWpBgl2tm4MBpTEEktlrjk+bI=; b=0oczno1UighI/c
	ZncYYd/477o03TNzXkOQw7U43thbHj2HnKpxdl+7frDeJcZlT8MUZaK73WFJDIU5bspda8MAX8EYb
	84Gy7c0PIFtpoKTrPB6slk31qrhrOERf4CveEWGvq926seZAWgxrc/eyCFndyiJ8azmE2vdNzZMVs
	XoZTa44P0W+kNQwB6P8PjMsG9+44qhVlnVppz2Jog1bLrZKEfTmI1wztce8WYt76DrgwtNzpq0vXO
	FGiFFt0BFZ72c14P7G2lDaQsd8M1SxmOUUbSGTYRcOgppIb+3q4dBWzYDAVPdLuCYTjgWfWDq5hKC
	GVktZoRVqgWsvgsSv/Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6bBS-0000000Dyu2-1nLm;
	Mon, 13 May 2024 19:18:02 +0000
Received: from [104.143.35.188] (helo=mail0.hi302.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6bBO-0000000DytN-0bXA
	for linux-rockchip@lists.infradead.org;
	Mon, 13 May 2024 19:18:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=hi302.com;
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@hi302.com;
 bh=mPg37f33BOpgqdgrAz0qTJIBi5VEpZBqPWzSm10Euro=;
 b=CmVDq6mOaflzdVdjmwNV7MRewvHV4pYC0p75C2WlYYoHQTmnu0CrjKxP2HE6BtTONoTb6W6geBOe
   ItJIn+4Y1stdwNgHF11GxFqIbWe2Sruy2fbohdYJ7c7ftONDm7MNw9CPlLa7KDg3P3LebBNAsVbT
   JIHZ2ZLggzWfNj5sZ4Q=
From: =?utf-8?Q?=E8=87=AA=E5=8B=95=E3=83=A1=E3=83=BC=E3=83=AB=E9=80=9A=E7=9F=A5?= <no-reply@hi302.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?Q?=E3=80=90_=E3=82=A4=E3=82=AA=E3=83=B3=E3=82=AB?=
	=?utf-8?Q?=E3=83=BC=E3=83=89_=E3=80=91=E6=B1=BA=E6=B8=88=E5=AE=8C?=
	=?utf-8?Q?=E4=BA=86=E3=81=AE=E3=81=8A=E7=9F=A5=E3=82=89=E3=81=9B?=
Mime-Version: 1.0
Message-ID: <tencent_1C1D08DC4D5B51E35A5CFE2C@hi302.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Tue, 14 May 2024 03:07:43 +0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_121758_700600_C6985CC8 
X-CRM114-Status: UNSURE (   2.07  )
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

44Kk44Kq44Oz44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhIGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcNCg0K44GT44Gu44Gf44Gz44Gv44Kk44Kq44Oz44Kr44O844OJ
44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE
44G+44GZ44CCDQrmmKjml6XjgIHjgYrlrqLmp5jjga7jgq/jg6zjgrjjg4Pjg4jjgqvjg7zjg4nj
gafmtojosrvmlK/lh7rjgYznmbrnlJ/jgZfjgZ/jgZPjgajjgpLjgYrnn6XjgonjgZvjgYTjgZ/j
gZfjgb7jgZnjgIINCuOBneOBruaUr+aJleOBhOOBruips+e0sOOBr+asoeOBruOBqOOBiuOCiuOB
p+OBmeOAgg0K44GUIOWIqSDnlKgg5pelIOaZgiDvvJoyMDI05bm0MDXmnIgxM+aXpSAyMTo0OSBQ
TQ0K44GUIOWIqSDnlKgg5aC0IOaJgCDvvJrljYPku6PnlLDkuIDjg4TmqYsgMSDkuIHnm67lupcg
KOOCu+ODluODs+OCpOODrOODluODsykNCuOBlCDliKkg55SoIOmHkSDpoY0g77yaOTUzMOWGhg0K
DQrjgqvjg7zjg4njgpLkvb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTloLTlkIjjga/jgIHku6Xk
uIvjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgq/jg6zjgrjjg4Pjg4gg44Kr44O8
44OJ5pSv5omV44GE44Gu5om/6KqN44KS44Kt44Oj44Oz44K744Or44GX44Gm44GP44Gg44GV44GE
44CCDQpodHRwczovL2JlYW0tc29sdXRpb25zLmNvbQ0KDQrjgqTjgqrjg7NORVTjgavjgZTnmbvp
jLLjgYTjgZ/jgaDjgYTjgabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6Xjgonj
gZvjgZnjgovjgrXjg7zjg5PjgrnjgafjgZnjgIINCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQrilqAg55m6IOihjCDogIUg4pagDQrmoKrlvI/kvJrnpL7jgqTjgqrjg7PpioDo
oYwNCuKWoCDmpa3li5nlj5foqJfkvJrnpL4g4pagDQrjgqTjgqrjg7Pjg5XjgqPjg4rjg7Pjgrfj
g6Pjg6vjgrXjg7zjg5PjgrnmoKrlvI/kvJrnpL4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
