Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C910C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 23:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+P1TV9fCngg/D9Vn5/1JiE7S4W9hJmRzj5ZKlitTHM=; b=2SVdnsoewyRAoU
	rWprNDlOSDYFy6mbnQZCpiftmARxZ5D5/pFsa63tMvf7gP+RbpaSfOwNq4JEI5TKx95PESYx7Af78
	Dta83XNfee+3ZiomtpsJ3elvZ7y64YDpgsKNHmzAL8wB41pguetX4vlM7NkLVVKEGj2Ti1anH2NTF
	Haqzer+n49+F3dloGpixt4yD6Z2oe1Yz8mWk4OYYxNfzNZ2iSAm5ZVAT2iQz1VhHF+GVcudjJje/f
	m21EcidYeEMNKdK5fviq+XVK6ZqfqY8Y5WKdDPpC/YwqHuunc3wLrrlt0LMO1KEApxFyloXuKouc5
	n2AlmqmvrzZbi8BiBusQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVgEI-00000009d5C-3tBv;
	Thu, 01 Feb 2024 23:12:22 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVgEE-00000009d3s-3RYe;
	Thu, 01 Feb 2024 23:12:20 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-602d222c078so14717027b3.0;
        Thu, 01 Feb 2024 15:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706829137; x=1707433937; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+PN1aVVdJv7dQ6u3SE9gXNMJ5i8PkALkHFjLI1LOmKY=;
        b=AS7u/SBTPMdSlzFkactenxWwRv/azmHXJ5w8MmYHnlXWH+RLdWxut8jaEz+cLcESNP
         euK2kzQGA/LWdqp3JYjynGQGf9yiU7IRNhUZ2NVEnocnIjiuuodZOLz+t1wRdZYvhOh7
         qZ79pW+T64T8UWvzr8vA2UmhYg/Ga8t11foHbXC8dqcXpzT1LZYnyTu5PN6Rw8II01zC
         foBfVurdW5I6vAK5KmDlUVw8fsrjhH0bZDdNY3fO2wz3JuOVvDWv1IHlfUyjiTKt426j
         2mZD1ohRZ1YxlWX7QGoZ5LDte6HQERjcwmmShx00KG+kFeLRyWYHrT375UMeHThGu+hR
         lLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706829137; x=1707433937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+PN1aVVdJv7dQ6u3SE9gXNMJ5i8PkALkHFjLI1LOmKY=;
        b=vkZCvWqh6ReyjwNEUsiqKSR57wNTyvzERCpZuzakMDzoUMCFjevGqeqAeCRyjlZMUo
         BIuJLeIFMAlhrzjUsAhNPr+4iak1htEDPYbds5GCtX4/tFZBtL7VdoxhC18xt2O5I3/9
         OQI6v3SfokFuMlGL5uovmq1L5HDVfz+O5yNZOM0fqiOCw3y2qaR8QASsY13CZfphkYOB
         x10BXSs9FMdV4VJF5fgpplATCg5v/AbnLtr7Fe9AW5qFqUKeALtedQfIvFC7UVYH2CvL
         3gXPBF/EgpxZhA/N3e/bz4J2GU9LJqTYVKqoRsUFQhkbu3N3Zi8uAm/gF0DnrBKWX/Re
         jNEA==
X-Gm-Message-State: AOJu0YyxZ5H8yN0XrryNYzfodVqr+UX454vNe4SyvdabUpgJnMqSNxdo
	G9/nyzzwpd4hsc3pcyUWkfIp7tJ6WHrHQZUTD/1Zo1dd5i+snhKiKYm2yMEby7aTGRh7s4PSI0/
	bexxxAA3IrhUa1Ab2KoFx6qinIfY=
X-Google-Smtp-Source: AGHT+IFznqZD386j38NqZlpMPZjSrbX0IVvxdtH06xaGlCHWUb0CmZLJnLZmRce7XPhhGHqaSHLrFy/x9r3vOSy+mk0=
X-Received: by 2002:a0d:cbc9:0:b0:5ff:81fa:16e6 with SMTP id
 n192-20020a0dcbc9000000b005ff81fa16e6mr622138ywd.38.1706829136716; Thu, 01
 Feb 2024 15:12:16 -0800 (PST)
MIME-Version: 1.0
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
 <2024020105-bankroll-opium-a6e5@gregkh> <6725eeac-45ee-4f3f-a612-0ef5725b9fd9@lunn.ch>
In-Reply-To: <6725eeac-45ee-4f3f-a612-0ef5725b9fd9@lunn.ch>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 2 Feb 2024 00:12:05 +0100
Message-ID: <CANiq72nnHj2PnsM-=RREOcq1wsyydFZQ67-DewDa18=tAHe4NA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] net: phy: add Rust Rockchip PHY driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	Christina Quast <contact@christina-quast.de>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@samsung.com>, 
	Alice Ryhl <aliceryhl@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, 
	Trevor Gross <tmgross@umich.edu>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_151218_881116_6B017EAD 
X-CRM114-Status: GOOD (  17.03  )
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

T24gVGh1LCBGZWIgMSwgMjAyNCBhdCAxMDozMOKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiBBcyBvbmUgb2YgdGhlIFBIWSBNYWludGFpbmVycywgaSB3b3VsZCBz
YXkgbm8uCj4KPiBOb3cgd2UgaGF2ZSBhbiBleGFtcGxlLCBpIHRoaW5rIHdlIHNob3VsZCBiZSBh
IGxvdCBtb3JlIHN0cmljdCBhYm91dAo+IHdoYXQgd2UgYWN0dWFsbHkgbWVyZ2UuIEl0IHNob3Vs
ZCBiZSBhIGRyaXZlciBmb3IgaGFyZHdhcmUgd2hpY2ggZG9lcwo+IG5vdCBoYXZlIGEgQyBkcml2
ZXIuCgpZZWFoLCBhIHNpbmdsZSAiUnVzdCByZWZlcmVuY2UgZHJpdmVyIiBpcyBsaWtlbHkgZW5v
dWdoIHRvIGdpdmUgYSBnb29kCmV4YW1wbGUgb2YgaG93IHRoaW5ncyB3b3VsZCBsb29rLgoKSSBn
dWVzcyBtb3JlIHRoYW4gb25lIGNvdWxkIGJlIGp1c3RpZmllZCBpZiB0aGVyZSBhcmUgc2lnbmlm
aWNhbnQKZGlmZmVyZW5jZXMsIGUuZy4gaWYgdGhlIG1haW50YWluZXJzIHdhbnQgdG8gY292ZXIg
bW9yZSBvZiB0aGUKYWJzdHJhY3Rpb25zIEFQSSBmb3Igc29tZSByZWFzb24uCgo+IFdlIGNhbm5v
dCBkcm9wIEMgZHJpdmVycyBzaW5jZSBSdXN0IGF0IHRoZSBtb21lbnQgZG9lcyBub3Qgc3VwcG9y
dCBhbGwKPiBhcmNoaXRlY3R1cmVzIEdDQy9DbGFuZyBkb2VzLiBQSFkgZHJpdmVycyBhcmUgYXJj
aGl0ZWN0dXJlCj4gaW5kZXBlbmRlbnQsIGFuZCBpbiByZWFsIGxpZmUgdXNlZCBvbiBtdWx0aXBs
ZSBhcmNoaXRlY3R1cmVzLiBXaGVuCj4gUnVzdCBldmVudHVhbGx5IGNhdGNoZXMgdXAsIHdlIGNv
dWxkIGNvbnNpZGVyIGRyb3BwaW5nIEMgZHJpdmVycyB3aGVuCj4gdGhlcmUgaXMgYW4gZXF1aXZh
bGVudCBSdXN0IGRyaXZlciwgYnV0IGZyb20gd2hhdCBpIGhlYXIsIHRoYXQgaXMgYQo+IGZldyB5
ZWFycyBhd2F5LiBJIGRvbid0IHdhbnQgdG8gYmUgc3VwcG9ydGluZyBhIEMgYW5kIFJ1c3QgZHJp
dmVyIGZvcgo+IHRoZSBzYW1lIGhhcmR3YXJlLgoKVGhlIGBydXN0Y19jb2RlZ2VuX2djY2AgYmFj
a2VuZCBjYW4gYWxyZWFkeSBidWlsZCB0aGUga2VybmVsIHdpdGhvdXQKY2hhbmdlcywgc28gaG9w
ZWZ1bGx5IHdlIHdpbGwgc2VlIHNvbWUgcmVzdWx0cyBzb29uZXIgdGhhbiB0aGF0LiBJZiB3ZQph
cmUgdGFsa2luZyBtdWx0aXBsZSB5ZWFycywgR0NDIFJ1c3QgbGlrZWx5IGVudGVycyB0aGUgZXF1
YXRpb24gdG9vLgoKQnV0LCBpbmRlZWQsIHRoZXJlIGlzIGEgbG90IG9mIHdvcmsgdG8gZG8gdW50
aWwgd2UgY2FuIGRyb3AgQyBjb2RlIGluIGdlbmVyYWwuCgpDaGVlcnMsCk1pZ3VlbAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
