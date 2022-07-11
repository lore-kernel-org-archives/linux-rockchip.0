Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED868C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 11:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbaivIP6oOYzgjiy88wwHqhw5j8Ok512LZxOxzfH4tY=; b=0Q+yWU84uG4hzQ
	8NG9PbI6WJear+uWyncYFmoybXzo7vKpXPvfXZ1YA0wByRqz6oYzNzoMJaKQnOSvreJXMFZCF5Yg2
	JZSnTBoZ0yaRnA8GUFrX+tDv2XDHdKFn7BktI5/tc4iXyc4RUuUrub1w3F5pAaimFgItKWrQsJ6ZN
	IAR0Uow0YBVpSYK8N1dmFsQIya+xhIuK4is4/p2FBZCiPsw+OyWnndKnUw6tib/YYPCoC6wxp3PYC
	qxiqaWpceldvasC1gvftFGAZU+JPaMxzaAAOselLN+xy0GTC4qaSyHexkS2CClOA4I8QobRBeRyn3
	b+IPitaQb3Yso3v49O7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oArDD-000vEj-8x; Mon, 11 Jul 2022 11:04:23 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oArCz-000v9S-SR; Mon, 11 Jul 2022 11:04:12 +0000
Received: by mail-lf1-x12a.google.com with SMTP id bf9so8031463lfb.13;
        Mon, 11 Jul 2022 04:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BAb82U1x/sK9iVlbAihHZCrOWGN1EMlrys2Ow1ABqo4=;
        b=gEyY0LvuPzTQUJ9wQtA10LciYAWiII+0oH8+1aOzurg8JmBVdi9qwDw2/hOJqPKH2A
         JL2fz+inBUWexfT6QH+j2zacG9TrhUMWjgb4OxT6oc/e2YVl5MHRWtcABz00v7FHIjuf
         SRVZ/X08xXM98toO+hd+uI0zS3kFQlgSw2aEIclr6VQ+6Aemfeb0IXdF3qEVuihAoBNc
         uMw6ZpsxV8QhsrTC8TBQ7deKVsjWiBipotaHZrue6ix63Rv+0d8EV2FhjYpHJpulcgr1
         2qjSf4r5yx3oBrO8sGpCoqvOj4zUmrc8g7D2lqjm0LoRQUXQe+pF/BU/OAfZEi/rqFva
         ckwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=BAb82U1x/sK9iVlbAihHZCrOWGN1EMlrys2Ow1ABqo4=;
        b=ycHqRvdSH480CinNPDjdYeSVn5563CNBWPxUHuZAIfwV/jBiVydz6g6S9cRHIwHvxl
         Fkk8/olMhT3nbnJXwrMo0c6QbhLq90Q7lKbMtRgz1JKU8lkTgdquH6RevrFR1fDW9gnx
         9qVcU0zvSForu29oDmlqI0T5JIX/4QgYt5VTUcgVaHcT2+9vJbvHrs6ZLpwFIAqUIvTw
         eYH9kYIwSNocXa/ogi1kH23ol6KEE/P3caxSVMuKq6ErN6nH1fCfbsr0iexC+hn+CueA
         TCuDXRQjfv4gcBavUmsWyFStn1CCMZs4ph1BgamMN0VSkJIyOLyHbo4UTwGehxrP8OST
         FB2w==
X-Gm-Message-State: AJIora8kXux7w+uIhSwxrruthrtrffebMe5utLZejoEpDPc/qgNG3455
	4ihJ2ODeyGbNOTdWvUeEPo4=
X-Google-Smtp-Source: AGRyM1twgH9KouRtDbmHub4U5o1eQtLk6NbA0EkJqRW5rUqx/jFwM9X1qCEJRQNyzsYBEdnM19FIpw==
X-Received: by 2002:a05:6512:3049:b0:489:cf1d:39bc with SMTP id b9-20020a056512304900b00489cf1d39bcmr7073607lfb.4.1657537444305;
        Mon, 11 Jul 2022 04:04:04 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id d15-20020a056512368f00b0048602d54471sm1466683lfs.156.2022.07.11.04.04.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jul 2022 04:04:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
Date: Mon, 11 Jul 2022 13:04:00 +0200
Cc: Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <27F4BA6C-9C56-446D-AB82-A691E7C54772@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
 <15846ffa-f68a-2f88-55a3-40a633132c28@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_040409_927434_D68EBE96 
X-CRM114-Status: GOOD (  13.19  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+IHcgZG5pdSAxMS4wNy4yMDIyLCBvIGdvZHouIDEyOjQxOgo+IAo+IE9uIDIwMjIt
MDYtMjUgMTY6MzEsIFBpb3RyIE9uaXN6Y3p1ayB3cm90ZToKPj4+IFdpYWRvbW/Fm8SHIG5hcGlz
YW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+IHcgZG5pdSAyNS4wNi4y
MDIyLCBvIGdvZHouIDE2OjAwOgo+Pj4gCj4+PiAKPj4+IFRoZSBmaXJzdCBpc3N1ZSB5b3UgaGF2
ZSBpcyB0aGUgVFYgaXNuJ3QgcmVzcG9uZGluZyB1bnRpbCB0aGUgYWJzb2x1dGUKPj4+IGVuZC4K
Pj4gSSBzdXNwZWN0IHRoaXMgaXMgYmVjYXVzZSBsYWNrIG9uIGlkbGUgZ2FwcyBiZXR3ZWVuIGNl
YyBjb21tYW5kcyBzZW50IGZyb20gYm9hcmQgdG8gdHYuCj4+IE1heWJlIFRWIHN3LiBjYW4ndCBk
ZWFsIHdpdGggY29uc2VjdXRpdmUgY29tbWFuZHMgd2l0aG91dCBhbnkgaWRsZSBiZXR3ZWVuIHRo
ZW0/Cj4+IEl0IGlzIGludGVyZXN0aW5nIHRoYXQgZGlzY29ubmVjdGluZyBUViAtIHNvIENFQyBs
aW5lIGlzIGRyaXZlbiBvbmx5IGJ5IGJvYXJkIC0gcm9jazNhIHN0aWxsIGRvbid0IGhhdmUgYW55
IGlkbGUgZ2FwcyB3aGlsZSByb2NrM2IgKGFuZCByYWR4YSA0LjE5IGJzcCkgaGFzIHRoZW0gKHZl
cnkgc2ltaWxhciBiZXR3ZWVuIDUuMThtYWlsaW5lIGFuZCA0LjE5IGJzcCkuCj4+IEhvdyB0aGlz
IGlzIHBvc3NpYmxlIHRoYXQgY2hhbmdlIEkvTyBmcm9tIG0wLT5tMSBpbXBhY3RzIF90aW1pbmdz
XyBvbiBmcmVlIGhhbmdpbmcgQ0VDIGxpbmU/Cj4gCj4gQ2hlY2sgYWxsIHRoZSBwaW5jdHJsIHNl
dHRpbmdzIGJleW9uZCBqdXN0IHRoZSBmdW5jdGlvbiBtdXggLSBwdWxscywgZHJpdmUgc3RyZW5n
dGgsIG91dHB1dCB0eXBlLCBldGMuIC0gdGhlIGRlZmF1bHRzIHRlbmQgdG8gYmUgYWxsIG92ZXIg
dGhlIHBsYWNlLCBhbmQgcmFyZWx5IHdoYXQgeW91IHdhbnQuCj4gCj4gUm9iaW4uCgpSb2JpbiwK
CkknbSBub3Qgc3VyZSBkbyBJIGxvb2tlZCBpbiByaWdodCBwbGFjZS4uLgoKYnV0OgoKaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4Lmdp
dC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaT9o
PXY1LjE4LjEwI243ODgKCnZzLgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXBpbmN0cmwuZHRzaT9oPXY1LjE4LjEwI243OTUKCmFyZSBsb29raW5nIG9r
PwoKCj4gCj4+PiBUaGlzIHN0cmlrZXMgbWUgYXMgYSBzaWduYWwgaW50ZWdyaXR5IGlzc3VlLiBE
byB5b3UgaGF2ZSBhbgo+Pj4gb3NjaWxsb3Njb3BlIChub3QgYSBsb2dpYyBhbmFseXplciwgeW91
IG5lZWQgdm9sdGFnZXMgYW5kIHJhbXAgdGltZXMpCj4+PiB0byBjb21wYXJlIHRoZSB3b3JraW5n
IHZzIG5vbi13b3JraW5nIHNpZ25hbHM/IENoZWNrIGJvdGggc2lkZXMgb2YgdGhlCj4+PiBsZXZl
bCBzaGlmdGVyLgo+PiBJbmRlZWQgLSBpIHdpbGwgdmVyaWZ5IHRoaXMgd2l0aCBkaWdpdGFsIG9z
Y2lsbG9zY29wZS4KPj4gQWxyZWFkeSBvcmRlcmVkIGFuZCBtdXN0IGF3YWl0IHdlZWsgb3IgMiBm
b3IgZGVsaXZlcnkgOi0oCj4+IE15IGFuYWxvZyBvc2NpbGxvc2NvcGUgc2hvd3MgY29ycmVjdCBs
ZXZlbHMgYW5kIHNsb3BlcyAic2VlbXMiIHRvIGJlIHRoZSBzYW1lIGxpa2UgaW4gd29ya2luZyAo
bm8gbWVtb3J5IHNvIGkgY2FuIGNvbXBhcmUgb25seSB2aXN1YWxseSBvbiBmdXp6eSBzY3JlZW4p
Cj4+IEZvciBtZSBrZXkgaXMgdG8gdW5kZXJzdGFuZCB3aHkgb24gcm9jazNhIHRoZXJlIGlzIG5v
IGFueSBpZGxlcyBiZXR3ZWVuIGNlYyBjb21tYW5kcyAtIGV2ZW4gd2hlbiBub3RoaW5nIGlzIGNv
bm5lY3RlZCB0byBiYXJkIChzbyBjZWMgaXMgb25seSBzZW5kaW5nIGFuZCBub3RoaW5nIGV4dGVy
bmFsIGltcGFjdHMgY2VjIHN0YXRlIG1hY2hpbmUpLi4uLgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
