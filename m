Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533E9C88E77
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqlPanlrhapYPZtPwst9g7sGz852ll33RDIZdlUvf3o=; b=b3mkdUWIh2kgI7
	5qlmtz9S9KjnSmFsLK4jvuza2QyBChyEy1++xaOpgXil3nyupR6e1wwsyepzNNlbiThMoX+nj13OX
	vcC1WFlYqlOQHlewBJdSml7aLbbB36MAvjvnyOpl3f+oRQcRNokbPraaTfPM2ng9SKgucTnH7OQuE
	RNNnc9tJnF7F/fuwHcVTmu2JTeh6+vDySZSs2D5I5iHLSMH6bIjHAP9/OJq2Fs99/dK2jlc0jf5uW
	HvFlch2HjRwPnR6En5JBDnP7kIUcSxcXRsUfQgXPPuh2NgZN452oAPGbVqlYYnAIJ3pVuZrP2O63y
	Jg8S6K0yjIqb3q8FakRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QI1-00000005tdO-0E4A;
	Tue, 15 Sep 2026 10:21:25 +0000
Received: from mail-ej2-x07.google.com ([2a00:1450:4864:34::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QHx-00000005tbb-1Hyx
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:21:23 +0000
Received: by mail-ej2-x07.google.com with SMTP id a640c23a62f3a-c28e3998eb7so254227666b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789467678; cv=none;
        d=google.com; s=arc-20260327;
        b=TysqCMWyTfIUknw1GKy7sG/w2ywtFZcNTjH/sv2fwaHLrefS8WVHZLh/9S9pBPkVWA
         GMnjLprmDHvMDGPHiij30E8fJudGLrN1KKCyCqe7SPNwex4L2V3W/pVZ+A98ftMSW/PZ
         hcSEvkayg04lv17o/CdgwXiKg1rdXek+/Mst5nBA8GuGgSrDFfeYi4DkTzTgGAGeSI3J
         At1bIIjTMs6Jfuf/vvL3AibSJqjRL5/oaKkoZD5voGn/QWr/LnEnMpHerpQ+pWjV8hbe
         yJdhmllpmoqQ+g8nHgblg6BfOPxo/G+MZZjAAb5y/3WdIbQ+a+EoB61yC9zQ2nqUc/sO
         ajdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XABCwRH1cz9pvG8xb1/rc/NU2wG7piHZfQQ4/81JX2E=;
        fh=drv1M9HkcHRAGQmvioF7Sd+yaoWV0h4FyUKkS60Dw+U=;
        b=S+yOAcUo74Rj/xl1JxANpRxaf0FRPOkRdDPRf1dDSR8S4YhMMkjoIvVAthKqL28s0k
         mLQhFRSLyIIZgu4N/MIpC9ksLrhpfQq6sp6TchuMKkFJjuKW7wFKvF53l1fxTFGooSF3
         FhTYPgmjzVfZl47KWWCOd4OywqbGC7T8ifEKfXTBL7ozIZUwYCn6F9UyCfwD1Xr986IL
         BcgAlFthikC1QZxO1jk6cYXVi/MDZVpBK4Z072Gid/C0/CapbQNY9Hlrbb14YVpb5g9w
         +zR+8O6ZRi9Tsan0rTSdfZfB9EK6tFINDPT8+yPJoVgeeODtmpPuHL1bq66ojqujd3pi
         lSGQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789467678; x=1790072478; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XABCwRH1cz9pvG8xb1/rc/NU2wG7piHZfQQ4/81JX2E=;
        b=O6mzftbYdw3DGTPM2HnGamIlIGTvqhlNvo5tHkx5ILFdu9h7jdbrHKRWGgbHPKgCca
         forQS/7RT90KCRPTO8tEMzWZiNxBg10fyYAgwLHiFQ8Bk+NOnNBrvc3d4t55NjNQLYwN
         kMSiIiX+2fYf3cVsoUNLFprCzIAJ6aii8AdE0vhI/+ZbxP3V1/ULimBTP0MMOf8Ws8sp
         9qBGZo6bBtLvep/FgCblLA8AMQLotY+nEtqKTW0s5phERwcWXPn+UHsrZ39uQ02dvbo+
         arC5oq2TJr+AlF2xoxaCc6QJW1KXzLfeWs/ZoQ5WTRTx4J19mhFNhShXxFdIsJY4eU1q
         KA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467678; x=1790072478;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XABCwRH1cz9pvG8xb1/rc/NU2wG7piHZfQQ4/81JX2E=;
        b=hr3qwrBXb8dqJZVf3gKdn5Utq9/L2GDlTOqMLx+c3naEitFfLN//qhvMeOHyTo1jEP
         ZZPl3g4t5d0bXXy8aop7SPjYMNkJ9Xg+9V7fZJ+8X1Y0t7qR25HLwscWDl+w4ob3tAXj
         QkwmugpRKsB3vvmGItJsqUaFWIC8SgchiM6IWib7IDRAE5edPyripHZnb5gUIHbW2wF6
         CwKMWjPLXy4qk83SfERZuXw9yYvLFBpni/xpJT0Q6+fl+67YLJYkZ8DPaFPLenBVN3rM
         8Mb9rxCc0bB22vZSrQUN1OsFn8f9Kw72v/wIsm+80qNOd9z8fc9NR6oHiIX0vUGUQSEx
         Bdfw==
X-Forwarded-Encrypted: i=1; AKwUvBy7uBB/CI2sW71V2u8oedI17bqwzoVYW6ezzDETkopFXvv1IEmLCx8U+C8BwK+pt0BJg6vbYMnVe9PnEcLDyw==@lists.infradead.org
X-Gm-Message-State: AFuF++nSKBsrf1W7N9gcASDyEKNH0rXof7ky6gKrHnsXxonQG+3iP/33
	aahdOfXt2EOAUGQIA1AxSogNb/4auKuNcz4R9XBhgvURmHdxiUNb/fyWnfgmOfeIffEVJcUGWcg
	MBgTAajT/fI0S/87bvc2xK33ZuXpAlIA=
X-Gm-Gg: AYBFou25eqb5RJwgWWLyiWiKJ5ABa4fl6b4ke7QY99bXQCZY11ZmF8rHaHP7akdU+aY
	F4jIxKNTRixS37sFdjVJUm6SYIeWjMrosWzx8Ti5SAKj7KFqsnzOLDFwDR+i2Z9Jsj8LXRaErSw
	a8e2yKcmyuoarFJnF3XSBnK9+XiygWJVewsfVd8rvSXD8yPCVZx67PX6XukVyQQzY95h/PDtzpy
	1ECxUXsqORxmnNzlRgvMS91FM/ySflWpJhnZsk8Kpf5g7jLWm0XFXzRh6DwnHsj4tUIWs1S/Z6o
	QvW2noEqxxMQh3L3ZZMNvolGsDmRxY7LpV6Dk8SY/9lsvwrzKATe5SdqaU6n4819V/y1hA==
X-Received: by 2002:a17:907:7241:b0:c20:3402:bd35 with SMTP id
 a640c23a62f3a-c29b86141d8mr457395166b.12.1789467677591; Tue, 15 Sep 2026
 03:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260913185849.907479-2-coiaprant@gmail.com> <178941747507.22033.8211069120708719813@kernel.org>
In-Reply-To: <178941747507.22033.8211069120708719813@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 15 Sep 2026 18:21:05 +0800
X-Gm-Features: AcwNN1U3Qit6ntXQAFPttYjh805h_onbrrSTpOF8OG9JEjoB8ua8kiIB7eBD0O4
Message-ID: <CALj3r0gwMFRg7GADhOThGWbpJ=9CGGQYUb=xYtsDV8kLAHkMuQ@mail.gmail.com>
Subject: Re: [PATCH net-next v5 01/11] net: stmmac: move XPCS lifetime
 management to platform drivers
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_032121_390728_E693EFFD 
X-CRM114-Status: GOOD (  39.48  )
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

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE15pel5ZGo5LqM
IDA0OjI05YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAzIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDIgwrcgTG93OiAxCj4KPiAtIFtN
ZWRpdW1dIENvbW1pdCBtZXNzYWdlIG1pc2NoYXJhY3Rlcml6ZXMgdGhlIHJlbW92YWwgb2YgdGhl
IGdlbmVyaWMKPiAgIFhQQ1MgY3JlYXRpb24gYXMgcmVtb3ZpbmcgZGVhZCBjb2RlLgo+IC0gW01l
ZGl1bV0gRFQgYmluZGluZyB2cyBpbXBsZW1lbnRhdGlvbiBtaXNtYXRjaDogYWZ0ZXIgdGhpcyBw
YXRjaAo+ICAgbm90aGluZyBpbiB0aGUgc3RtbWFjIGNvcmUgcmVhZHMgdGhlIGdlbmVyaWMgJ3Bj
cy1oYW5kbGUnIHByb3BlcnR5LOKApgo+IC0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIGRlc2Ny
aWJlcyB0d28gZGVmZWN0cywgb25lIGZyYW1lZCBhcyAibW9yZQo+ICAgY3JpdGljYWxseSIgKHRo
ZSBjb21tb24gY29kZSBvdmVyd3JpdGluZyBwcml2LT5ody0+eHBjcyBhZnRlciBh4oCmCj4KPiAt
LQo+Cj4gbmV0OiBzdG1tYWM6IG1vdmUgWFBDUyBsaWZldGltZSBtYW5hZ2VtZW50IHRvIHBsYXRm
b3JtIGRyaXZlcnMKPgo+IFRoZSBnZW5lcmljIFhQQ1MgY3JlYXRpb24gaW4gc3RtbWFjX3Bjc19z
ZXR1cCgpIChwY3MtaGFuZGxlIGxvb2t1cCBhbmQKPiBtZGlvX2J1c19kYXRhLT5wY3NfbWFzayBi
YXNlZCB4cGNzX2NyZWF0ZV9tZGlvZGV2KCkpIGlzIHJlbW92ZWQsIGxlYXZpbmcKPiBvbmx5IHRo
ZSBwbGF0LT5wY3NfaW5pdCgpIC8gcGxhdC0+cGNzX2V4aXQoKSBkaXNwYXRjaC4gVGhlIEludGVs
IG1HYkUgZ2x1ZQo+IGdyb3dzIGl0cyBvd24gcGNzX2luaXQoKS9wY3NfZXhpdCgpIHRoYXQgY3Jl
YXRlIGFuZCBkZXN0cm95IHRoZSBYUENTLCBhbmQKPiB0aGUgcmVuZXNhcy1nYmV0aCwgcnpuMSBh
bmQgc29jZnBnYSBwY3NfZXhpdCgpIGNhbGxiYWNrcyBub3cgY2xlYXIKPiBwcml2LT5ody0+cGh5
bGlua19wY3MgYWZ0ZXIgZGVzdHJveWluZyB0aGUgUENTLgo+Cj4gQSBmZXcgcXVlc3Rpb25zIG9u
IHRoZSBjb21taXQgbWVzc2FnZSBhbmQgb24gdGhlIHJlbW92YWwgb2YgdGhlIGdlbmVyaWMKPiBw
YXRoLgo+Cj4gPiAgICAgRmlyc3QsIGlmIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVzIGEgInBjcy1o
YW5kbGUiIGJ1dCBubyBzZWxlY3RfcGNzKCkKPiA+ICAgICBjYWxsYmFjayBpcyBwcm92aWRlZCBi
eSB0aGUgcGxhdGZvcm0gZHJpdmVyLCB0aGUgY3JlYXRlZCBYUENTIGlzIG5ldmVyCj4gPiAgICAg
dXNlZC4gVGhlIHBoeWxpbmsgZnJhbWV3b3JrIHJlcXVpcmVzIHNlbGVjdF9wY3MoKSB0byBhY3R1
YWxseSByZXR1cm4KPiA+ICAgICB0aGUgUENTIHRvIHRoZSBjb3JlLCBzbyB0aGUgcGNzLWhhbmRs
ZSBwcm9wZXJ0eSBiZWNvbWVzIGVmZmVjdGl2ZWx5Cj4gPiAgICAgdXNlbGVzcyB3aXRob3V0IHRo
ZSBtYXRjaGluZyBjYWxsYmFjay4KPgo+IFtTZXZlcml0eTogTWVkaXVtXQo+IElzICJ0aGUgY3Jl
YXRlZCBYUENTIGlzIG5ldmVyIHVzZWQiIGFjY3VyYXRlPyAgQW4gWFBDUyBzdG9yZWQgaW4KPiBw
cml2LT5ody0+eHBjcyBoYXMgdHdvIGNvbnN1bWVycyB0aGF0IGRvIG5vdCBnbyB0aHJvdWdoIHNl
bGVjdF9wY3MoKS4KPgo+IHN0bW1hY19waHlsaW5rX3NldHVwKCkgaW4gc3RtbWFjX21haW4uYyB1
c2VzIGl0IHRvIHdpZGVuIHRoZSBwaHlsaW5rCj4gaW50ZXJmYWNlIHNldHM6Cj4KPiAgICAgICAg
IC8qIElmIHdlIGhhdmUgYW4geHBjcywgaXQgZGVmaW5lcyB3aGljaCBQSFkgaW50ZXJmYWNlcyBh
cmUgc3VwcG9ydGVkLiAqLwo+ICAgICAgICAgaWYgKHByaXYtPmh3LT54cGNzKQo+ICAgICAgICAg
ICAgICAgICBwY3MgPSB4cGNzX3RvX3BoeWxpbmtfcGNzKHByaXYtPmh3LT54cGNzKTsKPiAgICAg
ICAgIGVsc2UKPiAgICAgICAgICAgICAgICAgcGNzID0gcHJpdi0+aHctPnBoeWxpbmtfcGNzOwo+
Cj4gICAgICAgICBpZiAocGNzKQo+ICAgICAgICAgICAgICAgICBwaHlfaW50ZXJmYWNlX29yKGNv
bmZpZy0+c3VwcG9ydGVkX2ludGVyZmFjZXMsIC4uLgo+Cj4gYW5kIHN0bW1hY19pbml0X3BoeSgp
IHVzZXMgaXQgdG8gZGVjaWRlIHdoZXRoZXIgdG8gYXR0YWNoIGEgUEhZIGF0IGFsbDoKPgo+ICAg
ICAgICAgaWYgKHByaXYtPmh3LT54cGNzICYmCj4gICAgICAgICAgICAgeHBjc19nZXRfYW5fbW9k
ZShwcml2LT5ody0+eHBjcywgbW9kZSkgPT0gRFdfQU5fQzczKQo+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gMDsKPgo+IFNvIGZvciBhIGR3bWFjIGluc3RhbmNlIHdpdGggYSBwY3MtaGFuZGxlIGJ1
dCBubyBwbGF0LT5wY3NfaW5pdCwgZG9lcyB0aGlzCj4gY2hhbmdlIG5hcnJvdyBjb25maWctPnN1
cHBvcnRlZF9pbnRlcmZhY2VzIChhbmQgY29uZmlnLT5scGlfaW50ZXJmYWNlcykgYW5kCj4gYWx0
ZXIgdGhlIFBIWS1hdHRhY2ggZGVjaXNpb24sIHJhdGhlciB0aGFuIGp1c3QgZHJvcHBpbmcgc29t
ZXRoaW5nIHVudXNlZD8KPiBXb3VsZCBpdCBiZSB3b3J0aCBzcGVsbGluZyB0aGF0IGJlaGF2aW91
cmFsIGNoYW5nZSBvdXQgaW4gdGhlIGNvbW1pdAo+IG1lc3NhZ2U/CgpUaGUgWFBDUydzIHJ1bnRp
bWUgZnVuY3Rpb25hbGl0eSBpcyBlbnRpcmVseSBkcml2ZW4gYnkgcGh5bGluayB0aHJvdWdoCnBj
c19jb25maWcoKSAvIHBjc19nZXRfc3RhdGUoKSAvIHBjc19saW5rX3VwKCksIGFsbCBvZiB3aGlj
aCByZXF1aXJlCnRoZSBwbC0+cGNzIHBvaW50ZXIgcmV0dXJuZWQgYnkgbWFjX3NlbGVjdF9wY3Mo
KS4gV2l0aG91dCB0aGF0IGNhbGxiYWNrLApwbC0+cGNzIHN0YXlzIE5VTEwgYW5kIG5vbmUgb2Yg
dGhlbSBhcmUgZXZlciBjYWxsZWQuCgpUaGUgdHdvIHJlYWRzIGluIHN0bW1hY19tYWluLmMgYXJl
IG9uZS1zaG90IHNldHVwLXRpbWUgc2lkZSBlZmZlY3RzLgpUaGV5IGRvIG5vdCBleGVyY2lzZSB0
aGUgUENTLCBzbyBJIGNvbnNpZGVyIHRoZSBzdGF0ZW1lbnQgYWNjdXJhdGUgaW4KdGhlIHNlbnNl
IHRoYXQgbWF0dGVycyBoZXJlLgoKPiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIGlzbid0IGEgYnVn
LCBidXQgY291bGQgdGhpcyBwYXJhZ3JhcGggc2F5IHRoYXQgbm8gaW4tdHJlZSBwbGF0Zm9ybSBp
cwo+IGFmZmVjdGVkIHRvZGF5Pwo+Cj4gQWxsIHRocmVlIHByZS1leGlzdGluZyBwY3NfaW5pdCgp
IGltcGxlbWVudGF0aW9ucyBzdG9yZSB0aGVpciBQQ1MgaW4KPiBwcml2LT5ody0+cGh5bGlua19w
Y3MsIG5vdCBwcml2LT5ody0+eHBjczoKPgo+ICAgcmVuZXNhc19nbWFjX3Bjc19pbml0KCkgIC0+
IHByaXYtPmh3LT5waHlsaW5rX3BjcyA9IG1paWNfY3JlYXRlKC4uLikKPiAgIHJ6bjFfZHdtYWNf
cGNzX2luaXQoKSAgICAtPiBwcml2LT5ody0+cGh5bGlua19wY3MgPSBtaWljX2NyZWF0ZSguLi4p
Cj4gICBzb2NmcGdhX2R3bWFjX3Bjc19pbml0KCkgLT4gcHJpdi0+aHctPnBoeWxpbmtfcGNzID0g
cGNzCj4KPiBzbyB0aGUgb2xkICJwcml2LT5ody0+eHBjcyA9IHhwY3M7IiBvbiB0aGUgcGNzX2lu
aXQgYnJhbmNoIG92ZXJ3cm90ZSBOVUxMCj4gd2l0aCBOVUxMLiAgaW50ZWxfbWdiZV9wY3NfaW5p
dCgpIGFkZGVkIGhlcmUgaXMgdGhlIGZpcnN0IGluLXRyZWUgcGNzX2luaXQoKQo+IHRoYXQgc3Rv
cmVzIGFuIFhQQ1MsIHdoaWNoIG1ha2VzIHRoaXMgYSByZWZhY3RvciB0aGF0IHJlbW92ZXMgYSBs
YXRlbnQgdHJhcAo+IHJhdGhlciB0aGFuIGEgZml4IGZvciBvYnNlcnZhYmxlIGJyZWFrYWdlLgoK
VGhlIHdvcmRpbmcgaXMgaW50ZW50aW9uYWwuIEFsbCBpbi10cmVlIHBjc19pbml0KCkgaW1wbGVt
ZW50YXRpb25zCmV4Y2VwdCBJbnRlbCBzdG9yZSB0aGVpciBQQ1MgaW4gcHJpdi0+aHctPnBoeWxp
bmtfcGNzLCBzbyB0aGUgb2xkCmFzc2lnbm1lbnQgd2FzIGEgbGF0ZW50IHRyYXAgcmF0aGVyIHRo
YW4gb2JzZXJ2YWJsZSBicmVha2FnZS4gQ2FsbGluZwppdCBvdXQgYXMgY3JpdGljYWwgcmVmbGVj
dHMgdGhlIHJpc2sgaXQgd291bGQgaGF2ZSBwb3NlZCBmb3IgdGhlIGZpcnN0CmRyaXZlciB0aGF0
IHN0b3JlZCBhbiBYUENTIHRoZXJlLgoKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWRpby5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
c3RtaWNyby9zdG1tYWMvc3RtbWFjX21kaW8uYwo+ID4gaW5kZXggYWZlOThmZjViZGNiMC4uNzM5
NmI2ODg5OWM2NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8v
c3RtbWFjL3N0bW1hY19tZGlvLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWlj
cm8vc3RtbWFjL3N0bW1hY19tZGlvLmMKPiA+IEBAIC00MjYsMzUgKzQyNiwxNCBAQCBpbnQgc3Rt
bWFjX21kaW9fcmVzZXQoc3RydWN0IG1paV9idXMgKmJ1cykKPiA+ICBpbnQgc3RtbWFjX3Bjc19z
ZXR1cChzdHJ1Y3QgbmV0X2RldmljZSAqbmRldikKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3Qgc3Rt
bWFjX3ByaXYgKnByaXYgPSBuZXRkZXZfcHJpdihuZGV2KTsKPiA+IC0gICAgIHN0cnVjdCBmd25v
ZGVfaGFuZGxlICpkZXZub2RlLCAqcGNzbm9kZTsKPiA+IC0gICAgIHN0cnVjdCBkd194cGNzICp4
cGNzID0gTlVMTDsKPiA+IC0gICAgIGludCBhZGRyLCByZXQ7Cj4gPiAtCj4gPiAtICAgICBkZXZu
b2RlID0gZGV2X2Z3bm9kZShwcml2LT5kZXZpY2UpOwo+ID4gLQo+ID4gLSAgICAgaWYgKHByaXYt
PnBsYXQtPnBjc19pbml0KSB7Cj4gPiAtICAgICAgICAgICAgIHJldCA9IHByaXYtPnBsYXQtPnBj
c19pbml0KHByaXYpOwo+ID4gLSAgICAgfSBlbHNlIGlmIChmd25vZGVfcHJvcGVydHlfcHJlc2Vu
dChkZXZub2RlLCAicGNzLWhhbmRsZSIpKSB7Cj4gPiAtICAgICAgICAgICAgIHBjc25vZGUgPSBm
d25vZGVfZmluZF9yZWZlcmVuY2UoZGV2bm9kZSwgInBjcy1oYW5kbGUiLCAwKTsKPiA+IC0gICAg
ICAgICAgICAgeHBjcyA9IHhwY3NfY3JlYXRlX2Z3bm9kZShwY3Nub2RlKTsKPiA+IC0gICAgICAg
ICAgICAgZndub2RlX2hhbmRsZV9wdXQocGNzbm9kZSk7Cj4gPiAtICAgICAgICAgICAgIHJldCA9
IFBUUl9FUlJfT1JfWkVSTyh4cGNzKTsKPiA+IC0gICAgIH0gZWxzZSBpZiAocHJpdi0+cGxhdC0+
bWRpb19idXNfZGF0YSAmJgo+ID4gLSAgICAgICAgICAgICAgICBwcml2LT5wbGF0LT5tZGlvX2J1
c19kYXRhLT5wY3NfbWFzaykgewo+ID4gLSAgICAgICAgICAgICBhZGRyID0gZmZzKHByaXYtPnBs
YXQtPm1kaW9fYnVzX2RhdGEtPnBjc19tYXNrKSAtIDE7Cj4gPiAtICAgICAgICAgICAgIHhwY3Mg
PSB4cGNzX2NyZWF0ZV9tZGlvZGV2KHByaXYtPm1paSwgYWRkcik7Cj4gPiAtICAgICAgICAgICAg
IHJldCA9IFBUUl9FUlJfT1JfWkVSTyh4cGNzKTsKPiA+IC0gICAgIH0gZWxzZSB7Cj4gPiArICAg
ICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgaWYgKCFwcml2LT5wbGF0LT5wY3NfaW5pdCkKPiA+
ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAtICAgICB9Cj4gPgo+ID4gKyAgICAgcmV0ID0g
cHJpdi0+cGxhdC0+cGNzX2luaXQocHJpdik7Cj4gPiAgICAgICBpZiAocmV0KQo+ID4gLSAgICAg
ICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9iZShwcml2LT5kZXZpY2UsIHJldCwgIk5vIHhQQ1Mg
Zm91bmRcbiIpOwo+ID4gLQo+ID4gLSAgICAgaWYgKHhwY3MpCj4gPiAtICAgICAgICAgICAgIHhw
Y3NfY29uZmlnX2VlZV9tdWx0X2ZhY3QoeHBjcywgcHJpdi0+cGxhdC0+bXVsdF9mYWN0XzEwMG5z
KTsKPiA+IC0KPiA+IC0gICAgIHByaXYtPmh3LT54cGNzID0geHBjczsKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIGRldl9lcnJfcHJvYmUocHJpdi0+ZGV2aWNlLCByZXQsICJGYWlsZWQgdG8gaW5p
dGlhbGl6ZSBQQ1NcbiIpOwo+ID4KPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIH0KPgo+IFtTZXZl
cml0eTogTWVkaXVtXQo+IEFmdGVyIHRoaXMgY2hhbmdlLCBkb2VzIGFueXRoaW5nIGluIHRoZSBz
dG1tYWMgY29yZSBzdGlsbCByZWFkIHRoZSBnZW5lcmljCj4gInBjcy1oYW5kbGUiIHByb3BlcnR5
Pwo+Cj4gVGhlIHByb3BlcnR5IGlzIHN0aWxsIGRvY3VtZW50ZWQgZ2VuZXJpY2FsbHkgaW4KPiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LWNvbnRyb2xsZXIu
eWFtbDoKPgo+ICAgcGNzLWhhbmRsZToKPiAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ICAgICBpdGVtczoKPiAgICAgICBtYXhJdGVtczog
MQo+ICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICBTcGVjaWZpZXMgYSByZWZlcmVuY2UgdG8gYSBu
b2RlIHJlcHJlc2VudGluZyBhIFBDUyBQSFkgZGV2aWNlIG9uIGEgTURJTwo+ICAgICAgIGJ1cyB0
byBsaW5rIHdpdGggYW4gZXh0ZXJuYWwgUEhZIChwaHktaGFuZGxlKSBpZiBleGlzdHMuCj4KPiBh
bmQgc25wcyxkd21hYy55YW1sICRyZWZzIGV0aGVybmV0LWNvbnRyb2xsZXIueWFtbCBhbmQgZW5k
cyB3aXRoCj4gImFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0cnVlIiwgc28gcGNzLWhhbmRsZSBzdGF5
cyBzY2hlbWEtdmFsaWQgb24gZXZlcnkKPiBkd21hYyBub2RlIHJlZ2FyZGxlc3Mgb2Ygd2hpY2gg
Z2x1ZSBpcyBib3VuZC4KPgo+IE9uIGEgZ2x1ZSB0aGF0IGRvZXMgbm90IHNldCBwbGF0LT5wY3Nf
aW5pdCwgc3RtbWFjX3Bjc19zZXR1cCgpIG5vdyByZXR1cm5zIDAKPiB3aXRob3V0IGxvb2tpbmcg
YXQgdGhlIHByb3BlcnR5LCBwcml2LT5ody0+eHBjcyBzdGF5cyBOVUxMLCBhbmQgbm90aGluZyBp
cwo+IGxvZ2dlZCAtIHdoZXJlYXMgdGhlIHJlbW92ZWQgY29kZSB3b3VsZCBhdCBsZWFzdCBmYWls
IHByb2JlIHdpdGgKPiAiTm8geFBDUyBmb3VuZCIgZm9yIGEgYmFkIHBoYW5kbGUuICBTaG91bGQg
dGhlIGJpbmRpbmcgYmUgdXBkYXRlZCB0byBzYXkKPiBwY3MtaGFuZGxlIGlzIG9ubHkgaG9ub3Vy
ZWQgYnkgc3BlY2lmaWMgZ2x1ZSBkcml2ZXJzLCBvciBzaG91bGQgdGhlIGNvcmUKPiBrZWVwIGEg
Z2VuZXJpYyBwYXRoIChvciBlbWl0IGEgd2FybmluZykgc28gdGhlIHR3byBhZ3JlZT8KPgo+IFRo
ZSBzYW1lIHF1ZXN0aW9uIGFwcGxpZXMgdG8gc3RydWN0IHN0bW1hY19tZGlvX2J1c19kYXRhLnBj
c19tYXNrLgo+IHN0bW1hY19tZGlvX3JlZ2lzdGVyKCkgc3RpbGwgdHJlYXRzIGl0IGFzICJhIFBD
UyBsaXZlcyBhdCB0aGVzZSBNRElPCj4gYWRkcmVzc2VzIiBhbmQgbWFza3MgdGhlbSBvdXQgb2Yg
dGhlIGJ1cyBzY2FuOgo+Cj4gICAgICAgICBuZXdfYnVzLT5waHlfbWFzayA9IG1kaW9fYnVzX2Rh
dGEtPnBoeV9tYXNrIHwgbWRpb19idXNfZGF0YS0+cGNzX21hc2s7Cj4KPiBidXQgbm8gY29yZSBj
b2RlIGNyZWF0ZXMgYSBQQ1MgZm9yIHRob3NlIGFkZHJlc3NlcyBhbnkgbW9yZSwgb25seQo+IGR3
bWFjLWludGVsJ3MgcHJpdmF0ZSBpbnRlbF9tZ2JlX3Bjc19pbml0KCkuICBEb2VzIGEgZ2x1ZSB0
aGF0IHNldHMKPiBwY3NfbWFzayB3aXRob3V0IHBjc19pbml0IG5vdyBlbmQgdXAgd2l0aCB0aGF0
IGFkZHJlc3MgbmVpdGhlciBzY2FubmVkIGFzIGEKPiBQSFkgbm9yIGluc3RhbnRpYXRlZCBhcyBh
IFBDUz8KClRoaXMgaXMgaW50ZW50aW9uYWwuIE9ubHkgcGxhdGZvcm1zIHRoYXQgc2V0IHBjc19p
bml0KCkgYXJlIGNvbnNpZGVyZWQKdG8gc3VwcG9ydCBhIFBDUy4gQSBnbHVlIHRoYXQgc2V0cyBw
Y3MtaGFuZGxlIG9yIHBjc19tYXNrIHdpdGhvdXQKcGNzX2luaXQoKSBpcyBtaXNjb25maWd1cmVk
LCBhbmQgdGhlIG5ldyBiZWhhdmlvdXIgbWFrZXMgdGhhdCBleHBsaWNpdApieSBub3QgY3JlYXRp
bmcgYW55dGhpbmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
