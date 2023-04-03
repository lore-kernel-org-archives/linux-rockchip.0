Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE453C761A6
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 10:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7dStrZ4qpuN0vxIxONSJ2hv0swEai3zsFxGlsXJVqw=; b=AbTPWffJaLvaa3
	TIC45y4iRc++7i/kPjDWqNczuWzAze24db6lxEbQiU1lgvCB3hVFfRUVrUayEDwto8PWvMvn+h3Zd
	f9B1Vn6X6XSx5xn7BnrLOmD2MYTEkZv2MXoCbZmhb212jQ7XfEYvl4em94eoGmP+QPApZEXGPIpKK
	cAyyCJUrCddFrP5TEDZ6dqvpA1sZi8nWWYnU0bk+JzWLjX95yx2Ve6sKxn0mt7qJQQLK6SdIZkvaM
	lPcxhlnnUMQ9sq+5Jg/4pHO8QiVjyYVvJHA5vM51FAajjQOb95vpSOjHT+a9wRVi9cM5bE8/HeZzI
	182/mXLZbgIbwdvFbn6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHcc-00EyQA-0b;
	Mon, 03 Apr 2023 10:41:10 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHcT-00EyMM-07;
	Mon, 03 Apr 2023 10:41:02 +0000
Received: by mail-pf1-x436.google.com with SMTP id y2so18812136pfw.9;
        Mon, 03 Apr 2023 03:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680518459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFuL6ChpVUUgBPgyIo4zUUMh6LlZPDJPlmBW1Q5qZg8=;
        b=ddMKekAjo8HdAcsOLoioX/xPvxdrkFFaA0B/cyLzxbLFI8Ln0goCY8ygu65HhlUsB1
         ikjJVip5ACJzg1hqxGMkAU79CDtu6uNxFUGwCW9t2MFWBjL28chDTjBMnyO10xZN3Htv
         i1pa0Euntl5mXtZiTBfPpS4MCQf83EDcDWNILPcC9R/baVe7S3zyJEicYsOGqAjEEVnT
         rgXZkcuvEWsJMFA3797m7ITbF8XPjs7lK/rVFnkVVIf+0zE+w3GIR5JviqkxlAlgaDeN
         fRei51a+S/c0lArUA/F7hsZ6Lh7aovQBggoEMhYqdh4N+w474XbXYbwwlIbZVSxEkd8q
         9Khw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680518459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFuL6ChpVUUgBPgyIo4zUUMh6LlZPDJPlmBW1Q5qZg8=;
        b=tcIlmWuWInE1V9bZKe3xypmq8noGMGwgdqintKPK3ocmaJH3YadZiFVduOvTdeCZsO
         qezMrc283kzuRpdJTgW5yy/T0QU8/Nek9KdNYyseW8qlshV1HILwFQQSSlnMCaEF6rqN
         uFtNeoO9WQxcFbMZot+F/3NYS4b0ucoUHu6VGfplWL6oe88CW39kTCJ4mQZCxdawCbIW
         XFBvAofID9mtyxb9G2J3HNNdwxCsKHTMCbnMxcSKZ4t8IR9EaXHCi/XNTktKpgmY1cKw
         xFe9qdlW5j1AVJqWeoZuDP9h2ypA4W6ciVkE1ThhiJ1G1EXDBfD7i2n/2xg9M8tvfkvZ
         qLFg==
X-Gm-Message-State: AAQBX9dnOKtUShbnqUOTDzWqCRDAqM+zP91/wBicVpXGPS7Y28Pj8LOE
	bTqznLQHHEJfBizGF6DTQbD8NdH6nJR1M+YQs19uD3+tXHQ=
X-Google-Smtp-Source: AKy350ZgcbNdLWCD2SElCx52IwknONkFSjpKh+B1fGuP38l/SArhy1jlY2KFg4e89kIFLn72ByaxCAoDab+K4//dXV8=
X-Received: by 2002:a05:6a00:99f:b0:62b:113b:72d7 with SMTP id
 u31-20020a056a00099f00b0062b113b72d7mr16244491pfg.3.1680518458919; Mon, 03
 Apr 2023 03:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230331163058.5688-1-sebastian.reichel@collabora.com>
 <CAEwRq=q=W57W33nYe_uUDQb0cf7QkFoa0rO+EWdsuUGTN7k_Vg@mail.gmail.com> <22215580.EfDdHjke4D@diego>
In-Reply-To: <22215580.EfDdHjke4D@diego>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Mon, 3 Apr 2023 12:38:12 +0200
Message-ID: <CAEwRq=rmd=m1YybLYU9zTLGjwkvQze9fkX3WQhF+2RWWWfAKig@mail.gmail.com>
Subject: Re: [PATCHv1 0/2] Improve RK3588 clocks and power domains support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, 
	Peter Geis <pgwipeout@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Boris Brezillon <boris.brezillon@collabora.com>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_034101_073127_0B4EF07B 
X-CRM114-Status: UNSURE (   9.17  )
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

T24gTW9uLCBBcHIgMywgMjAyMyBhdCAxMjoyM+KAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+IElmIHlvdSB3YW50IHRvIGNoZWNrIG1vcmUsIHRyeQo+ICMgbWtk
aXIgL2RlYnVnCj4gIyBtb3VudCBub25lIC9kZWJ1ZyAtdCBkZWJ1Z2ZzCj4gW29yIGRvIHRoaXMg
dG8gYSBsb2NhdGlvbiBvZiB5b3VyIGNob2ljZSwgSSBndWVzcyB0aGUgc3RhbmRhcmQgaXMgdW5k
ZXIgL3Byb2NdCj4KPiAjIGNhdCAvZGVidWcvcG1fZ2VucGQvcG1fZ2VucGRfc3VtbWFyeQo+Cj4g
YW5kIGNoZWNrIHRoZSBydW50aW1lX3N0YXR1cyBmaWVsZC4KCkhlcmUgaXQgaXM6Cgpkb21haW4g
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyAgICAgICAgICBjaGlsZHJlbgogICAgICAg
ICAgICBwZXJmb3JtYW5jZQogICAgL2RldmljZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJ1bnRpbWUgc3RhdHVzCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0Kc2RtbWMgICAgICAgICAgICAgICAgICAgICAgICAgICBvZmYtMAogICAgICAg
ICAgICAwCiAgICAvZGV2aWNlcy9wbGF0Zm9ybS9mZTJjMDAwMC5tbWMgICAgICAgICAgICAgICAg
ICAgICAgc3VzcGVuZGVkCiAgICAgICAgICAgIDAKYXVkaW8gICAgICAgICAgICAgICAgICAgICAg
ICAgICBvZmYtMAogICAgICAgICAgICAwCnNkaW8gICAgICAgICAgICAgICAgICAgICAgICAgICAg
b2ZmLTAKICAgICAgICAgICAgMApwY2llICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZi0w
CiAgICAgICAgICAgIDAKZ21hYyAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbgogICAgICAg
ICAgICAwCiAgICAvZGV2aWNlcy9wbGF0Zm9ybS9mZTFiMDAwMC5ldGhlcm5ldCAgICAgICAgICAg
ICAgICAgYWN0aXZlCiAgICAgICAgICAgIDAKdXNiICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBvZmYtMAogICAgICAgICAgICAwCnJnYTMxICAgICAgICAgICAgICAgICAgICAgICAgICAgb2Zm
LTAKICAgICAgICAgICAgMApmZWMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZi0wCiAg
ICAgICAgICAgIDAKaXNwMSAgICAgICAgICAgICAgICAgICAgICAgICAgICBvZmYtMAogICAgICAg
ICAgICAwCnZpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2ZmLTAKICAgICAgICAgICAg
MAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc3AxLCBm
ZWMKdm8xICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvZmYtMAogICAgICAgICAgICAwCnZv
MCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2ZmLTAKICAgICAgICAgICAgMAp2b3AgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIG9mZi0wCiAgICAgICAgICAgIDAKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm8wCnJnYTMwICAgICAgICAgICAg
ICAgICAgICAgICAgICAgb2ZmLTAKICAgICAgICAgICAgMAphdjEgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG9mZi0wCiAgICAgICAgICAgIDAKdmRwdSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBvZmYtMAogICAgICAgICAgICAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGF2MSwgcmt2ZGVjMCwgcmt2ZGVjMSwgcmdhMzAKdmVuYzEgICAgICAg
ICAgICAgICAgICAgICAgICAgICBvZmYtMAogICAgICAgICAgICAwCnZlbmMwICAgICAgICAgICAg
ICAgICAgICAgICAgICAgb2ZmLTAKICAgICAgICAgICAgMAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2ZW5jMQpya3ZkZWMxICAgICAgICAgICAgICAgICAg
ICAgICAgIG9mZi0wCiAgICAgICAgICAgIDAKcmt2ZGVjMCAgICAgICAgICAgICAgICAgICAgICAg
ICBvZmYtMAogICAgICAgICAgICAwCnZjb2RlYyAgICAgICAgICAgICAgICAgICAgICAgICAgb2Zm
LTAKICAgICAgICAgICAgMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBya3ZkZWMwLCBya3ZkZWMxLCB2ZW5jMApncHUgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG9mZi0wCiAgICAgICAgICAgIDAKbnB1MiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBvZmYtMAogICAgICAgICAgICAwCm5wdTEgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2Zm
LTAKICAgICAgICAgICAgMApucHV0b3AgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZi0wCiAg
ICAgICAgICAgIDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbnB1MSwgbnB1MgpucHUgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZi0wCiAgICAg
ICAgICAgIDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bnB1dG9wCgpEb24ndCBrbm93IGhvdyB0byBpbnRlcnByZXQgdGhpcyB0aG91Z2guLi4KCj4gQWxz
byB5b3UgY291bGQgcHJvdmlkZSBhIGVtYWlsLXJlcGx5IHdpdGggYQo+Cj4gVGVzdGVkLWJ5OiBZ
b3VyIE5hbWUgPHlvdXItZW1haWw+CgpZb3UgY2FuIGFkZCBteToKClRlc3RlZC1ieTogVmluY2Vu
dCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdtYWlsLmNvbT4KClJlZ2FyZHMKCi0tIApWaW5jZW50
IExlZ29sbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
