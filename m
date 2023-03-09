Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71693C64EC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Mar 2023 13:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpt4Lpv3m+r0mq6k+1TEo/KTNInwbzzijl8vkva1ZKA=; b=UhEFB0WV7RmeYH
	CD2nSsPJ/f9xzOqde4ryem39zgvHIuJ41SDcy0ryt3SiEWSj5bMlrH30InXgGUucl6G9M6/rsGkxk
	2EzZ/NNCyiLjBG4LuO5SYZH6/ZFN03chyTXFNf7LX5ntHhsbSwHMXN9T3SCjQ/NQ8H9dgnAnmo/GH
	EY3DFaRrYt9rpHb/KFkJSbb6lFyu90Yg/Dm/KoPC1PrelFwzF1aY2VRwE+Zr33pzKiYTTZHzfmjUP
	XMjLIbNxFwG8YvCU7NprxxPkdW8ywZu/X69/mtGNFw2d6sru0go9SkKGZwYhyJd1pVgAqSgC3AW1D
	mUt8kY4RVAPCh5CwzBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFtP-009yZc-5e; Thu, 09 Mar 2023 13:01:11 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFtG-009yXL-PI; Thu, 09 Mar 2023 13:01:09 +0000
Received: by mail-lj1-x22f.google.com with SMTP id f16so1713748ljq.10;
        Thu, 09 Mar 2023 05:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678366859;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dP+ewDGSKCxM2jcx4aWMWmyBv/FKyYjqa67/rDQKfl0=;
        b=ekd5CAS4KQ753h3434roSc0HkvfwGJolCWZjVytyL5kiVKrbVpVWNCsQPhUNxfv4Vi
         a+76S58yyL5aa0z/Vpb5i/SxppPV++0df9coVfITgXKFhO5CM6KK+Lp4BbeJeaD+tX2f
         UV9Am0YDYCxhtM88R1l9ef098J3KdDEaIP67f8fW0zI6Lts5kMBHpyNNO9DXyrQIFmSJ
         HEg0SP6WpowXpeDNgHRSa+ry154WJvZbp4qwCCCwhwo2WRWVXlv4McwoABUW7v9z0vxl
         CFOtzy6MgKHPv1hbceV/iym1KHbVs6FG+AplI+u9EymUHkeAhjwPq/kzCebPCLNasZti
         9MNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678366859;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dP+ewDGSKCxM2jcx4aWMWmyBv/FKyYjqa67/rDQKfl0=;
        b=4byknMmglTF//GKt0G9uZe35tPPQPhbg7MPh6uw05/m0Ni/FFRTgaDZE4QwRtD+UGo
         Xr9pS/KgqxGJokJRHK0T5r4Yre3cATvLi+kbc7taCD6O2S2xOqzcFjeyB2SU+2I1IKsQ
         7TM0GYUtWpNTNX1htMH+puLQJpMUlB4txRzQpbckQF70/F1BVknNNwBiNCYqkvYgKUd+
         5y1rgNzi058AQ8idBYwvYZ0uZudLEHw8tP8eG7l8KsRf34JAXQYMIBL8/JtkiBiP48iJ
         eol0Pg6uS/gUP9VvJlB76qQ91hl0yTbfwChlcbH3XleKsoMS8M9hlBU85jXe7nAQeve/
         j6NQ==
X-Gm-Message-State: AO0yUKXt2S5FsFadvdtpuLMwtKCyLbQrEpLoETsfweP16LvaYjGf9SlN
	aQD9dLnxRKIwwYjYUEbynDU=
X-Google-Smtp-Source: AK7set/RCdb8KPr3V3KAfiBQ+tLjvfioeznm4pMx9HBP9njhWt9JG0HJYASiCgT6w79py4S/REYoFQ==
X-Received: by 2002:a2e:9b16:0:b0:295:a542:8b47 with SMTP id u22-20020a2e9b16000000b00295a5428b47mr6014299lji.8.1678366859466;
        Thu, 09 Mar 2023 05:00:59 -0800 (PST)
Received: from smtpclient.apple (84-10-103-47.static.chello.pl. [84.10.103.47])
        by smtp.gmail.com with ESMTPSA id j15-20020a19f50f000000b004e7fa99f2b5sm2153733lfb.186.2023.03.09.05.00.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2023 05:00:59 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.14\))
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
Date: Thu, 9 Mar 2023 14:00:57 +0100
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 lucas.tanure@collabora.com
Message-Id: <6024BC59-B1ED-441C-97F8-73688022F899@gmail.com>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
 <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com>
 <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
 <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
 <A539A994-7E2C-4B51-8BAB-32AE475607DD@gmail.com>
 <dff133d1-6a8b-a838-4c85-a8bb16c7a742@suse.com>
To: Qu Wenruo <wqu@suse.com>
X-Mailer: Apple Mail (2.3654.120.0.1.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_050105_673950_577F12FA 
X-CRM114-Status: UNSURE (   7.87  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPiB3
IGRuaXUgMDkuMDMuMjAyMywgbyBnb2R6LiAxMzoxNzoKPiAKPiAKPiAKPiBBd2Vzb21lISBJIGNh
biBmaW5hbGx5IGdldCByaWQgb2YgdGhlIHN0dXBpZCBvdXQtb2YtdHJlZSByODEyNSBkcml2ZXIu
Cj4gCj4gV291bGQgZGVmaW5pdGVseSBoYXZlIGEgZ29vZCBsb29rIGludG8gdGhlIHBhdGNoZXMg
YW5kIHByb3ZpZGUgc29tZSBmZWVkYmFja3MsIGp1c3QgbWluZCB0byBzaGFyZSBhIGdpdCB0cmVl
IGZvciBlYXNpZXIgcmV2aWV3aW5nPwo+IAo+IAoKQWggLSBnaXQgdHJlZS4uLiBteSBkaXN0cm8g
YnVpbGRlciB1c2VzIG1vZGVsIHdpdGg6IG1haW5saW5lIHNyYyArIHBhdGNoZXMgLSBzbyBlZmZl
Y3RpdmVseSBpIGRvbuKAmXQgaGF2ZSBnaXQgdHJlZSBmb3IgdGhpcyBjb2Rl4oCmCgogIApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
