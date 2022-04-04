Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C555BC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 00:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IoHg7xrwjtYRtC9ZKDfjCiZU9lkSZIS2Uln/OujzN4=; b=dXEMic4PlrrNCN
	7PGOcm2GS6ECP9ZYc+XVSLiuP1WPdhiQ4g7gPa7aRR6AtmGdzG23suQAh8PISJ8GDcdUJcIDWu6o3
	LGsHw1s04WH3SELrLImTPl4ucTfLU5a7aL+e6ZNneK616Xck3Ga0+tILNLK1uwIE86wC/61XeCZuH
	5SxLxzP4QPs+fq+TjhZwvbP68G5nFyPttw5CMNNsoSxIdXIN/DXwbGXFiM1vGMuE/epM9iAU/gd6x
	qF/h5Bb/SiGdpi51HdSA9EzMIN1A772AscCSmv+rJNd8ZHH+y4yjgDopz3XBYc/g5HuNFdxuw6roQ
	m5TjDDeDmydARW0h8VZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbADA-00Cbhv-57; Mon, 04 Apr 2022 00:04:48 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbACy-00CbdK-M6
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 00:04:38 +0000
Received: by mail-ej1-x62e.google.com with SMTP id p15so16609603ejc.7
 for <linux-rockchip@lists.infradead.org>; Sun, 03 Apr 2022 17:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YlBtLMwXDp/2aSzEQXf/0+zL7sSyqtfpT0RHI0yBN90=;
 b=P4r/SoegNEr9VInkvurtF58MXhKjhQiVDqJpUu4jIYfBoM7fRxXVKY3XimQ8p1+Ht6
 QBOFuh3Er8IF7Ud0cd5Xph7UWZWsfPQR5uHHwn5n0I3Yc0at8BiFSTRkaaC4oufeami/
 5VT7CdnmzoYGC85b5eY4nGaPTbdnq/ly8bzjtQJQz4A5cxqfFEueUWK9t39IyI6VgB57
 vs+NUn8s7BKAKtSom9Kxi3C8wAdXSgJEu4I09ncRbzTdHG0lWlPK1o5iTjjwEV/764Ja
 RzMgmb4UMNgQF6Phj26OB1pum/i0O66B04Qdx+Y9Cx8bXB5LrJM5c3+a29wVh+J11wlo
 c4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YlBtLMwXDp/2aSzEQXf/0+zL7sSyqtfpT0RHI0yBN90=;
 b=z3nEuPMiQ6DySXQNJFWEriyfcuxQFRFFX/tyXmFg5LoDSxsxJLZ/6vfeKjPZ/YL0dN
 dRpBchbbs42RV55UDrE6UWUWpP6rISSXmUQVahNlBFM3I8xFLOMbbRaCLVvfGanEua3K
 pBDkGhH2n8RGFIlWqCtWt1ipcQb28m9eH9nIaXSLnKF/WAE0My8N7wC5XgfihXLQK4E/
 b3wCCRwl/gfWuKEBlsQ0QRZYlL3oXCuNlRg9NqfOfilGA6tz/BVN41IBjiVZxNB1KCur
 MqjN9NsX3wYD0Ou0RmAvWwgn/j+nx9GSM++NdLmO7PBGVPL/jsnaeiDT3vTxAKiGqiWC
 oRvg==
X-Gm-Message-State: AOAM532Y2Fvh9vCd7NtnvCVpUBd3cbn8L1AqqABTUZ/wv8rcnSVvw7Xz
 bZsV9t1ETA8iythqgd+ig4iENfuK6MtpR36UQaEeLQ==
X-Google-Smtp-Source: ABdhPJzV+fEMQ3b/d/a51/OGIg4GPl4a5ZojCGV9lwpP+gO59cT8hdkP5KKDh0yB0UMK8Iu+Tweu2xuIv/PiG9bs28M=
X-Received: by 2002:a17:906:4785:b0:6df:6784:a7f8 with SMTP id
 cw5-20020a170906478500b006df6784a7f8mr9035751ejc.301.1649030673654; Sun, 03
 Apr 2022 17:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-3-jernej.skrabec@gmail.com>
 <1b2ce01fb04f29cca58d40bd81d9f4cc46dcebf8.camel@ndufresne.ca>
In-Reply-To: <1b2ce01fb04f29cca58d40bd81d9f4cc46dcebf8.camel@ndufresne.ca>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sun, 3 Apr 2022 21:04:22 -0300
Message-ID: <CAAEAJfCA1ef5+KZHU4ZTJvuqdCAEUkvpDY9HTy1fp3M+0QxqPg@mail.gmail.com>
Subject: Re: [RFC PATCH 2/8] media: Add P010 format
To: Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Greg KH <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>, 
 Samuel Holland <samuel@sholland.org>, linux-media <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220403_170436_884656_EEE3407A 
X-CRM114-Status: GOOD (  10.80  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTmljb2xhcywgQmVuamFtaW4sCgpPbiBNb24sIEZlYiAyOCwgMjAyMiBhdCA5OjQ4IEFNIE5p
Y29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToKPgo+IExlIGRpbWFu
Y2hlIDI3IGbDqXZyaWVyIDIwMjIgw6AgMTU6NDkgKzAxMDAsIEplcm5laiBTa3JhYmVjIGEgw6lj
cml0IDoKPiA+IEFkZCBQMDEwIGZvcm1hdCwgd2hpY2ggaXMgY29tbW9ubHkgdXNlZCBmb3IgMTAt
Yml0IHZpZGVvcy4KPgo+IFRoZXJlIGlzIGEgbXVjaCBtb3JlIGNvbXBsZXRlIHBhdGNoIHRoYXQg
d2FzIHNlbnQgcHJldmlvdXNseSAod2l0aCBkb2N1bWVudGF0aW9uCj4gYW5kIGFsbCk6Cj4KPiBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvcGF0Y2gv
MjAyMTA2MTgxMzE1MjYuNTY2NzYyLTUtYmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbS8K
PgoKSSBiZWxpZXZlICJtZWRpYTogQWRkIFAwMTAgdmlkZW8gZm9ybWF0IiBzaG91bGQgYmUgZ29v
ZCB0byBnbywgSSB0aGluawp3ZSBjb3VsZCBtZXJnZSBpdC4KCkkgY2FuJ3QgZmluZCBpdCBvbiBt
eSBnbWFpbCBpbmJveCwgZm9yIHNvbWUgcmVhc29uLi4gY2FuIHlvdSBndXlzCnBsZWFzZSByZXBv
c3QgaXQsCmFuZC9vciByZXBseSB0byB3aXRoIGEgZ2VudGx5IHBpbmcgZm9yIEhhbnMgKGFuZCBw
bGVhc2UgQ2MgbWUgb24gdGhpcyBtYWlsKSA/CgpUaGFua3MhCkV6ZXF1aWVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
