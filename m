Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553F6C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 15:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0vzxdY/lK/DfZx6fdu+gKrpCfAaE+5PYiFbfZ+FAvF0=; b=VSq9vb1jN3wuJy
	zmt8pNkZjRQK8wcWeMK7Xejz9QHKHFWe5isd4KXaymWoF5pYCM1XbEWZBHDukvhHPDiUjacoBz9m7
	6MN8nrkf6GikXytXa+seK77iACAIlzZF3/N04tiikfE4YCVRVddZbqjrJfg2Arz+xA03OrEvjYc6o
	MIRryPnUNp+c93K9Tik7Ss9B8ZLsLy6PnDf6YegibB/YLTzxEtl+zNWavIcFLbFF7OlWztY4NRJkt
	SNC0g58rgPsEBSCSR5BYz/Ia9xj7FCiqG5tiddmnUimBWr9uwFI9wYPJOu1gtNKAFEiI/HQbeqxS/
	eJBqxqXWjbNSNxcJJooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJE9y-0000000BQC3-1qeZ;
	Mon, 17 Jun 2024 15:20:42 +0000
Received: from [137.220.228.117] (helo=mail0.pxveo.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJE9v-0000000BQ9l-2Do6
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 15:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=pxveo.com;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@pxveo.com;
 bh=0Bsnf1mUAelaHFay2yW70SWZ3KxD4+FaDJ8l6rbTlic=;
 b=xC0501D9bzRXRUzeKhZBdRJoSsJKr1NoB3N2MptIN1NRpvCJdRltq3nje00hgtLxQLteIK5A2V0T
   dnDSuBh2y0UdrK3yFGB1nV/SoFAqVKu3V5D+jXcl1jN84no9PEG35jsSXyHq3BFLJz5ruZxVhI3H
   t0kkrKrcYbTG1jbDQz8=
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@pxveo.com>
To: linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR44GU5Yip55So?=
	=?utf-8?B?44Gu44GK55+l44KJ44Gb?=
Date: Mon, 17 Jun 2024 23:10:20 +0800
Message-ID: <KDIMGHHAMDIOBHDLCOHHHENFIIND.no-reply@pxveo.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_082040_049562_5C40E590 
X-CRM114-Status: UNSURE (  -0.43  )
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

44GE44Gk44KC5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So6aCC44GN44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCDQrjgYrlrqLmp5jjga7jgqvjg7zjg4njgZTliKnnlKjl
hoXlrrnjgpLjgYrnn6XjgonjgZvjgYTjgZ/jgZfjgb7jgZnjgIINCg0K44GU5Yip55So44Kr44O8
44OJ77ya5LiJ5LqV5L2P5Y+L44Kr44O844OJDQril4fliKnnlKjlhYjvvJrljYPku6PnlLDkuIDj
g4TmqYsgMSDkuIHnm67lupcgKOOCu+ODluODs+OCpOODrOODluODsykNCuKXh+WIqeeUqOaXpe+8
mjIwMjTlubQ25pyIMTfml6UNCuKXh+WIqeeUqOmHkemhje+8mjI5LDgwMOWGhg0KDQrilrzjgqvj
g7zjg4njgpLkvb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTloLTlkIjjga/jgIHku6XkuIvjga7j
g6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgqvjg7zjg4nkvb/nlKjjga7oqbPntLDjgpLn
orroqo3jgZfjgabjgY/jgaDjgZXjgYTjgIINCmh0dHBzOi8vc3RhbmZvcmR1bmlvbi5jb20NCg0K
77yc44GU5rOo5oSP54K577yeDQrigLvvvJHvvI7mnKzjgrXjg7zjg5Pjgrnjga/jgIHjgYrlrqLm
p5jjga7kuInkupXkvY/lj4vjgqvjg7zjg4njga7jgZTliKnnlKjnhafkvJrjgYzooYzjgo/jgozj
gZ/loLTlkIjjgIHkuInkupXkvY/lj4vjgqvjg7zjg4njgavjgZTnmbvpjLLjgYTjgZ/jgaDjgYTj
gabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnjgovjgrXjg7zj
g5PjgrnjgafjgZnjgIINCuKAu++8ku+8juOBk+OBruODoeODvOODq+OCouODieODrOOCueOBr+mA
geS/oeWwgueUqOOBp+OBmeOAguOBlOi/lOS/oeOBq+WbnuetlOOBp+OBjeOBvuOBm+OCk+OAgg0K
DQrilqDnmbrooYzogIXilqANCuS4ieS6leS9j+WPi+OCq+ODvOODieagquW8j+S8muekvg0K44CS
MTM1LTAwNjENCuadseS6rOmDveaxn+adseWMuuixiua0sjLkuIHnm64y55WqMzHlj7cgU01CQ+ix
iua0suODk+ODqwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
