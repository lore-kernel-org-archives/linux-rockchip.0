Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 418C2C02183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 21:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87DuqIFvCcPTGH2j1d2+DmXHca4tjI+WNmdofzEAvgw=; b=fVd4VTI2NQq3BM
	L1jQx0Om/3rBpQwxK+kjnf81adAc7DBAYKutBq9jLKTu42hsVi7mwnEs3L6+zeq0OchX+VgdEFYe4
	hxxUeMRrGc2q3iM9efuxLPjUiDUtrVA9JnCCCQKZPHSyovJrDCN6wuUFumFZFi5lSk4S9dDiE/2q6
	P6z7BtYhvFV0lLzwSDjDZUanUnqJoCHrtWJ0ieIlwmmhav7PSXXVnz730kdJKZjRWCzTy3fd0zx5X
	xDZ49zh3RnImq44Rcjwz+hzHDE5WT56obVJ4Xm0jzZEAmWYJXunx4h+kwwRoz9pViTMxqHVKyGc30
	JEiBoI5al31LiahnxYUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXRaY-00000006ccq-2lVP;
	Mon, 13 Jan 2025 21:03:10 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXRaV-00000006cbv-3RsU
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jan 2025 21:03:08 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-467a8d2d7f1so38436351cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jan 2025 13:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736802186; x=1737406986; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zx97V1r5bVwGKTaA5pA9CxxSAlpiIGWhAUANm5Cxlt8=;
        b=PMVUnmEXt5iVaS3mil4wgqQsz5k+Q70R2sqHbsLf+ADRmia9+t1W3w4NPUMcxItDVm
         L2DYzVa9d0Cxp5I01gv5e/w0DJGVZmYIKAoESAF8f7wsmKLTbRVz0GlQTe46RUsRout7
         cXB2H1UI1UxB1xTLXrdvTun/FztCtSIhjPYe1YzA2v1RyZ2k87c0uXzorDTBQMt04OFI
         HDV+r4aJ3wWxfhvmJpeVHzEP0WBjvmVq0RNvYR/NJDN4tQ4tPI59+IQ3btHX3mSqv+8a
         0jWezwyVq3QOwH/SARXt7Zo1WbszX00gqFSF1InlVjU8Z5zOZYBdDszCrPm8nJo3Kyfq
         r58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736802186; x=1737406986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zx97V1r5bVwGKTaA5pA9CxxSAlpiIGWhAUANm5Cxlt8=;
        b=UfGxuYc15OtLsgjR7mQWzDZwGh4blMxpCqhv2CzaZZgM5iElFTehC2zIA6TPWhSGF9
         6XeHrJKBQJz+Br7AW7hIEsxwRedT1Ugt4hT7jEstJj18xEqetNyw+mn2lwYiJ5EVv+bW
         OSponxXEI4corAem+Z6ukLb+vHCJljX3MyUO3yM5eRXExNPq/8p9hHOTMPcR7xnuUkwX
         Y/h8oagAlKUI/iOjn6SjhxAZwTO/5Ph16fv3l884+4R55s2lbvwOP3utd+bBxkzcew4I
         B+vfMNfIcTUxuGckmep/g7VlPek8gOfTT3+mHUgbq1XkJSYCFnTO+JZHO6r3q8kORdL/
         QKJA==
X-Forwarded-Encrypted: i=1; AJvYcCVUQQpHxuAqrsRzCZ5NyHgO0jQ+qomL/2eQrhUch1wGN94sjCrYRa/sVQJnO+LlhARlhLHasKfpXyLZ8Z/v2g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+CDZHn12UNC8b2ZCUogCecdWrymOrR7us1yieMikBXySP4Ywp
	itkclK2Z8OtKGZr4poNAmfQMpRaSrtzqOQB9zr/8WORkkaOBYEVceOZWO5mZEP/LYJaCgYHlryj
	C/doUnjSj7C8G+fTa2biDeAbA8Kw=
X-Gm-Gg: ASbGncucLKKddOz4asHj2hagzPt/OTsFKgFShE3ZbdjYZJUkY6sjv1F0U6D/mCFdEWz
	RQk58ngXuNu5UmY7JLM+hNj793r1JqQm58qrnlQ==
X-Google-Smtp-Source: AGHT+IG6mJTUFUlO3DNyQ3Wx6vFPtHj7OVA1eQyZBuUFA88IW0Kei8Y05UYHAKQC7yP/sPN8/LTqiO9I1WVhnCJ4Im0=
X-Received: by 2002:a05:622a:1986:b0:467:5ea8:83e7 with SMTP id
 d75a77b69052e-46c70fd07c1mr307297441cf.9.1736802185911; Mon, 13 Jan 2025
 13:03:05 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
 <4929144.F8r316W7xa@diego> <CAAMcf8A8Y1js5Xt5FDOwq=dTw82UuZar0P6DVsJDgngRxPmtBw@mail.gmail.com>
 <2855083.6YUMPnJmAY@diego> <CAAMcf8Bf_iD8qpE3FqRUTweHFAk-5HuDsA3Q56POVtOtqpa4NQ@mail.gmail.com>
 <CAAMcf8AahTpHBoMjK=bdBQFfuiat0Nefhr1DKENbEi147OnTEA@mail.gmail.com>
 <CAAMcf8CGhpksVfKfaLUb_Gq4EX1oRucvJfR9arA-kF8EaZ=dyA@mail.gmail.com> <9b74a8ad-7ed5-4174-9af9-1e8cb2e01ef8@gmail.com>
In-Reply-To: <9b74a8ad-7ed5-4174-9af9-1e8cb2e01ef8@gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 13 Jan 2025 22:02:54 +0100
X-Gm-Features: AbW1kvbJYyhZ3DqOOMTnsYGhk6tcpeWIXCDWUHU3y_VSERqbQpB2JvXMX09dWFE
Message-ID: <CAAMcf8A3Ehi=krZirpuFVpVuQ4T_wwQ5Ss29_o4-BiTaQqsoFw@mail.gmail.com>
Subject: Re: PCIe missing on RK3399
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_130307_855549_FAF61154 
X-CRM114-Status: UNSURE (   7.06  )
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

T24gU2F0LCBEZWMgMjgsIDIwMjQgYXQgMTA6MzXigK9BTSBKb2hhbiBKb25rZXIgPGpieDYyNDRA
Z21haWwuY29tPiB3cm90ZToKPiBIaSwKPgo+IEkgdXNlZCBhIHNjcmlwdCB0byBmaW5kIHJlZ3Vs
YXRvciBub2Rlcy4KPiBEdWUgdG8gdGhlIHN0cmFuZ2UgZXh0ZXJuYWwgY29uc3RydWN0aW9uIHRo
ZXNlIG5vZGVzIHdlcmUgbWlzc2VkLgo+IFF1ZXN0aW9uIGZvciBIZWlrbzoKPiBOb3cgdGhhdCB3
ZSB0b3VjaCB0aGVtIGRvIHlvdSB3YW50IHRvIGtlZXAgaXQgdGhpcyB3YXkgb3IgY29tYmluZSB0
aGVtPwo+Cj4gSm9oYW4KCkhpIEpvaGFuLCBIZWlrbywKYW55IHByb2dyZXNzIHdpdGggdGhpcyBp
c3N1ZT8KClJlZ2FyZHMsCiAgVmljZW50ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
