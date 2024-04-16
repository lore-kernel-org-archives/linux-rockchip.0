Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2261CC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 11:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fK++kvSeYIlG6+9sPKzpHnCFqMbHKHT9ftoPxii3zfg=; b=iUJEPNfTJooxEz
	t2kN7Z33LgcVTjqOPTHKua9w5Z10gi2o2czz2ZF6nYT5oGQJeZn/2t3fpl2/b9Si8e0d8XKtUed+4
	IdjiRd72m4HXL2IeLqQwMJyQmCGhEbIlvIVIxjNUiNUgZxZl5GP4Z5DNlapRdlZC5oGOZYnVcNHx8
	+AmQSl/xqO2mFPlJ/9yHnwhnUz1DtIUV1wm7vU8mLI7+nZqzxbMwmO9syXjZhz5oeLAiUGhSfO8kR
	H0BXCQxUMHxbKLrmK/vf+Rf3KiX1TBRCojh8YNIQmahjW+TQRLDH62IcndxUGccJWjGmLI0vIMD6h
	xTNUPogCo/fglFqzekXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgjD-0000000BvxO-2STI;
	Tue, 16 Apr 2024 11:11:55 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgj9-0000000BvvK-1DSU;
	Tue, 16 Apr 2024 11:11:53 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-570441bc23bso639612a12.0;
        Tue, 16 Apr 2024 04:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713265906; x=1713870706; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C5RqFUtxcsDcdbF79TlWq+jdC6PmCQermSazbSgPd6I=;
        b=ntNhX4SiDL+TmM/EePmeFnUbQ0abHM0hLmVpMCzNxiyLmv0bwh8Sx4+inqMT1NUxoa
         Negn0gopJX1QBI+g1cMhN9Ymq8jiWk5/32zpas55hokp8XqnHRV7+0lkEcWqb0qILAqo
         OIT8yuFEZLczfKDaz2yuc8SxhqRK7bKorXYaLcfaTFBw5QUl21y0e/5geYZvdfVDZv6s
         w8jvCu238yvjEjb6lxUmPPbi08yRy2mlZNxW34T7aTnEFHQxqT4zv0QuCYTalSQzqWDV
         ONWXCvk72qfDyQtTCkGtd44SxHBiYeSx29rcWBisjZq7QyF8pSZWHsCUc6F/kHTu1QYB
         1CYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713265906; x=1713870706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C5RqFUtxcsDcdbF79TlWq+jdC6PmCQermSazbSgPd6I=;
        b=qMxtwtvRgRuu7kBbV9ez9QEboI/xXDTnFUszcIKIX9Tf5KkBZ7jrPOounRfzrwSGc6
         upffzz2nz6q0YGZ8Ijs/0gDfcIhQh6QkB6o5c1NfiEWzGRDnd8/c3KvJzfHBx6GW8bfM
         UZuk/yFM6sNkkVcPn+02kpHZnZ9/tHJVTy35Ymv6z1jqYdzvWlJFPOTke3+WnYKmM7g9
         m0d8p4e28USshYmqGWcZogu34Ty6RcD3gSQIdqAyvkk0v8kHxOX3n0wlALJLBhnOSCuL
         H5GbH6h5DAaEW2MCtoMbTIm6vApRkmGAA3mcAeenJTvEXLUd8Dl3AR4W08qIswsMsVRI
         XuXA==
X-Forwarded-Encrypted: i=1; AJvYcCX4rgAAm92EGd9ozdGCJgSfAXGacdf2WCcPkH8B6rInzvj7TVPNMlWpGNxkfAUq0cdoi4+dRm6CEMNTN9iUi1PRKCKPjsy0Kjqam4HUuSsVn/Do0uiB59xLKk0WdnsaBB9n8iKTpknX4rNeH+d2Mqu1iSFGL85rpuA=
X-Gm-Message-State: AOJu0YyNRWfJnVfpqoPne0mWxQcWzxKplt6Lkgc3wuwGLLFEvuU6yLrd
	+KfuDUlg+WhWGNNyIaEN4OQZkFQjzItstdVGDDSm+jt3Zm+U97j0QWCyyg+Std7GtQQtUoVoHXJ
	zFk2NnadefrKLWKjMJStf1dHZwfkftNDMJFY=
X-Google-Smtp-Source: AGHT+IH1PsRPyaXxP/K5Ox5QKG71lmTEr1SSzwErbC5T+EwPNkfxjV4mnP6QemY+YNWTendRU0/IMWW+eQMyDy5FlyQ=
X-Received: by 2002:a50:d6db:0:b0:56e:2cbc:db77 with SMTP id
 l27-20020a50d6db000000b0056e2cbcdb77mr8541856edj.33.1713265905965; Tue, 16
 Apr 2024 04:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240416034626.317823-1-liujianfeng1994@gmail.com> <20240416034626.317823-2-liujianfeng1994@gmail.com>
In-Reply-To: <20240416034626.317823-2-liujianfeng1994@gmail.com>
From: Weizhao Ouyang <o451686892@gmail.com>
Date: Tue, 16 Apr 2024 19:11:34 +0800
Message-ID: <CAHk0HovT_4UdPhoNSR74WvFi-HZhFfdBqib1OM6q_jXAxTgUgA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add ArmSoM
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	sfr@canb.auug.org.au, weizhao.ouyang@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_041151_358197_A73F89D1 
X-CRM114-Status: GOOD (  11.63  )
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

T24gVHVlLCBBcHIgMTYsIDIwMjQgYXQgMTE6NDbigK9BTSBKaWFuZmVuZyBMaXUgPGxpdWppYW5m
ZW5nMTk5NEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQWRkIHZlbmRvciBwcmVmaXggZm9yIEFybVNv
TSAoaHR0cHM6Ly93d3cuYXJtc29tLm9yZykKPgo+IFNpZ25lZC1vZmYtYnk6IEppYW5mZW5nIExp
dSA8bGl1amlhbmZlbmcxOTk0QGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBXZWl6aGFvIE91eWFu
ZyA8d2Vpemhhby5vdXlhbmdAYXJtLmNvbT4KCkJSLApXZWl6aGFvCgo+IC0tLQo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBpbmRleCBl
NGFlZWI1ZmUuLmU0NzQwNTUzNSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBAQCAtMTUxLDYgKzE1MSw4
IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246IEFSTSBMdGQuCj4gICAg
Il5hcm1hZGV1cywuKiI6Cj4gICAgICBkZXNjcmlwdGlvbjogQVJNYWRldXMgU3lzdGVtcyBTQVJM
Cj4gKyAgIl5hcm1zb20sLioiOgo+ICsgICAgZGVzY3JpcHRpb246IEFybVNvTSBUZWNobm9sb2d5
IENvLiwgTHRkLgo+ICAgICJeYXJyb3csLioiOgo+ICAgICAgZGVzY3JpcHRpb246IEFycm93IEVs
ZWN0cm9uaWNzCj4gICAgIl5hcnRlc3luLC4qIjoKPiAtLQo+IDIuMzQuMQo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
