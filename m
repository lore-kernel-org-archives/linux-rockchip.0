Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D9FC54F55
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 04:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8yuOYsSQnOCk8xu1NPS9Yd0f+5zNqj9Z+uuvsFq63M=; b=ULPZs+D2PSyDDA
	qzzHZDnQYi77XDdd/qKaB1xHexMXXvHOOQ4EoUQ9f7HIQmnldr1OyftVQl9XX+9kchW2kpNV8Y7Ph
	kjS0cN9cx9hWQWZAtMZBu05Xzr228t/EEoo4noUrnapZY8J+g++5Gu7H5jDwDzPduSXQZ9TtLcGaw
	o+frvN2oR8EP+z4mdsu9paQ83ypNFGSnmp7BSzYbpF84egpF2H16MYbTTc5g9VsrdEI2Ci04SB5wN
	npKV1/7NjIHF/FfYI3jeMqDo70Fq/++26QWU0iXL5nzCQOgfUGDtqEXu9fQAnez6zitqbr2lkfijb
	Uc1oko7M/xTWEFZf6W0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZFU-00000004NZp-26rd;
	Tue, 28 Jul 2026 04:17:00 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZFR-00000004NZP-2kaq
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 04:16:59 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-51c04bf4711so33434101cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 21:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785212216; cv=none;
        d=google.com; s=arc-20260327;
        b=WnwFF/J33IUZn48w/SMSMtDSs8xmcrmjeHxwBKzVZGLHJkh7YmjJZmLKxx89H+V9rQ
         vuXSGMwtU6xLVzo/Exi593mvKpy5yvtTbVWL1AyhpPxC+47WndMrqBnjenEl+j5W9hij
         8KkvUvOx9rWjpz0Q1j6KGYiwQCEawpwH8WugVE4jOIQCX1TWpfyfakEL5Ou9rFRayWlj
         yQq52qx9jfxxRE1b+oNE1kP7DqdPI8JcVBOCektUTzUzT/0UrnWeASXKho6r+2J96JPT
         lYQJHxDSYufSPSc6K0Z9y5qv5eZGImrUmuTvtSjZScFimUXBENsx+O4oUy48l5bc+og6
         tm2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XekGCxojJEhXUWFTpUiFdg5xCcY4H+jCxAJHqYvFYqw=;
        fh=C++2hGhuKwVnrO9XktD8VHaHRbQx2JL2MUeYJw81iGw=;
        b=kJ7TCGoGujWatxz9cdLahE769xZCD+DJ2qF1/XEqnqtS4AoTy9DepIgZu+x9WUivkp
         Rn7XAVBThha+p8ZH/TMxdqshYAFFR97PJULXXr5n/bd2eza5Q2BYWNuB+jWs8xJDpGIk
         UB8Etp6k2A4l0fBsdRALXzWlW5or0QEQttSfQgcINQtCzduMOfxeGSgtuVY1rao8k6qj
         9or0wo2SyAP0YMoic7uefpZoZnqnt/91eU1RWCE3fKVHc2RWC+pbSqiVgYiCGMdMJASX
         ZjukRGZi4CM4vskc5n+bZHcw3aFTYOH11etCGMvz3NRIUfzjYlLnHMlPQxBTsRfa4nkF
         jTXw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785212216; x=1785817016; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XekGCxojJEhXUWFTpUiFdg5xCcY4H+jCxAJHqYvFYqw=;
        b=sCg584UWwUpGursd/IEJUKT4fwe3RQWOyx/svbVfIFjZZbAdPtGOtgqt9h+909aquH
         n8OekeRhSeyqr+51QEMfO/HNePM7sZYDYYZpZUoKT1MBLVH+3L6QiIS1Q86rxZIs+hzN
         RTmIODAIBj9m9iGcGq+jftBspG21ar4DGlRkLLQE6iKOVgPQI42nzYuGWniZ2AF1Clj0
         bQt8B4itNVhNziUKf5+aEdrdkKpBws0eTFzU0YrhqceY+rVgjah3+IubMG+9stR/BN/T
         Pq+mLjm5anOb1Llr3euQvuDeOh+qoTM3O4aEaqiFI9ukKdNcHxVxCeIgXD8TBbVBVYYc
         nzMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785212216; x=1785817016;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XekGCxojJEhXUWFTpUiFdg5xCcY4H+jCxAJHqYvFYqw=;
        b=DyALl0tYj/9iwC0Hy4bwbOW8yILF9GVC5cnqqYcRfUHjmVDBUUhEh+m0EqV4UeaFaU
         cVGPw8u2aDtKcWVtt9+CelBAL+DLQsgyBJEbPXOIc5t2XmAUPzY2inoVPyEQ7d1C9/cW
         H/TAMay9+I52b+GlX91OiNOyt4gM+6OZrPHbz8dVT85pm7rHkLHVTDN+F+PShBF9Z3yQ
         +wh9xzqyVG2fedGpHnONiqSGxdCnG8V1SsZdEvDG6bkMBg7e1hTLhsCHIYisn0QI7+bm
         vdm1wnKgs/y+PoRME49/ZIrj4dc1UupcN7tnWNxHTqurpziNW+azSnoE6IXSSL2ID8Eo
         cohA==
X-Forwarded-Encrypted: i=1; AHgh+Rq0cUAg0z+p83MFWx5VCiNC/lAhVj5oySrQJOBseqhCcNqHcw7jNYu/9aYKftY+zdAwOilg5yDF02o+bHggFA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyW5ZNIyorZ4PtTUPWC1+2Ho+b27eBg+0p5vnpLFEECtX+2G5Ri
	yvx9XfHJRiQAB0DqEglHlMSt5CHMSlMMPrO3dASM0ukag1Eq+HdV5bH5SW1cbxvW9+cofLfLTzQ
	bmh03f4fnBEiYMMsYCVM+51uP0fvhivE=
X-Gm-Gg: AR+sD10b1/XeFy6hiA278pQWCZJX6v6+d7vpUezA4iXrauBdi73b4CL14Lk0bFK3uGo
	o3qH60gn2bP1sR/9BaPiHVrc3YNAacyAgQFa/M1NGyIwPVPlNuELrnUCS8o+WYk3NpvTy9KJieH
	4kycSIJsYiYRrMH0Di1tHJanJtK5W58C769sJM+8cV+OPuJb+22wE8foxARvZ5E/jDLN07o6IkS
	dmj/DkgEO6Sg0tKPitfbswGSNccnQ71elRvB9MeOnEebiIBV7C1oCOSGsMFbnWLat1s5n3FQzoM
	8CjWf0HvBJ0BLig7BQ==
X-Received: by 2002:a05:622a:6097:b0:51c:7b12:5fdc with SMTP id
 d75a77b69052e-529d71a5fd5mr4771651cf.88.1785212216269; Mon, 27 Jul 2026
 21:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <20260727205602.1188008-1-gahing@gahingwoo.com>
In-Reply-To: <20260727205602.1188008-1-gahing@gahingwoo.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 Jul 2026 08:16:44 +0400
X-Gm-Features: AUfX_myvNtJnega2iP3q9qJFtpLJlEuxkzgJa22nNvHcCMG6lVTQm6OH8bQ5w7Y
Message-ID: <CABjd4YwmznLERMx_DgfTeqXmOEZh=pcOjf+NYfkV069mETe-uQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Frank.Sae@motor-comm.com, andrew@lunn.ch, hkallweit1@gmail.com, 
	linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, attinagaoxu@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_211657_712431_970D8BD6 
X-CRM114-Status: GOOD (  26.43  )
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

SGkgSmF4aW5nLAoKT24gVHVlLCBKdWwgMjgsIDIwMjYgYXQgMTowNOKAr0FNIEppYXhpbmcgSHUg
PGdhaGluZ0BnYWhpbmd3b28uY29tPiB3cm90ZToKPgo+IFRoZXNlIFBIWXMgbmVlZCBhIDI1IE1I
eiByZWZlcmVuY2UuIE9uIGJvYXJkcyB3aXRob3V0IGEgbG9jYWwgY3J5c3RhbAo+IGl0IGlzIGZl
ZCBmcm9tIHRoZSBTb0MgYW5kIGRlc2NyaWJlZCBhcyBhIGNsb2NrIG9uIHRoZSBQSFkgbm9kZS4g
R2V0IGFuZAo+IGVuYWJsZSBpdCBpbiBwcm9iZSwgdmlhIGEgc21hbGwgaGVscGVyIGNhbGxlZCBm
cm9tIGJvdGggeXQ4NTIxX3Byb2JlIGFuZAo+IHl0ODUzMV9wcm9iZSwgc28gdGhlIFBIWSBpcyBj
bG9ja2VkIGJlZm9yZSBpdHMgcmVnaXN0ZXJzIGFyZSBhY2Nlc3NlZC4KPiBUaGUgY2xvY2sgaXMg
b3B0aW9uYWwsIHNvIGNyeXN0YWwtY2xvY2tlZCBib2FyZHMgYXJlIHVuYWZmZWN0ZWQuCj4KPiBS
ZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgo+IFNpZ25lZC1vZmYtYnk6
IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhpbmd3b28uY29tPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2
MjoKPiAtIEZhY3RvciB0aGUgY2xvY2sgZW5hYmxlIGludG8geXRwaHlfZ2V0X2FuZF9lbmFibGVf
cmVmY2xrKCkgYW5kIGNhbGwgaXQKPiAgIGZyb20geXQ4NTIxX3Byb2JlIGFzIHdlbGwsIHNvIHRo
ZSBZVDg1MjEgaXMgY292ZXJlZCB0b28sIG5vdCBvbmx5IHRoZQo+ICAgWVQ4NTMxLiB2MSBvbmx5
IHRvdWNoZWQgeXQ4NTMxX3Byb2JlLgo+IC0gQ2FycmllZCBBbmRyZXcncyBSZXZpZXdlZC1ieTsg
dGhlIGVuYWJsZSBpdHNlbGYgaXMgdW5jaGFuZ2VkLCBvbmx5Cj4gICBtb3ZlZCBpbnRvIHRoZSBo
ZWxwZXIuCj4KPiB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzE5MDM0NTU1
LjM2MjMwMDMtMS1nYWhpbmdAZ2FoaW5nd29vLmNvbS8KPgo+IEEgc2Vjb25kIGNyeXN0YWwtbGVz
cyBSSzM1NzYgYm9hcmQgd2l0aCBhIFlUODUyMSBuZWVkcyB0aGUgc2FtZSBoYW5kbGluZwo+IChz
ZWUgdGhlIFJLMzU3NiBHTUFDIDI1TSByZWZvdXQgdGhyZWFkIFsxXSksIHNvIHYyIGNvdmVycyBi
b3RoIFBIWXMuIFRoaXMKPiBzdXBlcnNlZGVzIHRoZSB3aXRoZHJhd24gZHdtYWMtcmsgTUFDLXNp
ZGUgc2VyaWVzLiBUaGUgRFRTIHRoYXQgY29uc3VtZXMKPiB0aGUgY2xvY2sgKHJrMzU3Ni1hcm1z
b20tY201KSBnb2VzIHRvIHRoZSByb2NrY2hpcCB0cmVlIHNlcGFyYXRlbHk7IHRoZQo+IGNsb2Nr
IGlzIG9wdGlvbmFsIHNvIHRoaXMgcGF0Y2ggc3RhbmRzIGFsb25lLiBUaGUgWVQ4NTMxIHBhdGgg
aXMgdGVzdGVkCj4gb24gYW4gQXJtU29NIENNNS1JTyAobGlua3MgYXQgMTAwMCBNYml0L3MpLgo+
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDcyNzAyMTA0OC4zMzc1NDQ0
LTEtYXR0aW5hZ2FveHVAZ21haWwuY29tLwo+Cj4gIGRyaXZlcnMvbmV0L3BoeS9tb3RvcmNvbW0u
YyB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMzMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9tb3Rv
cmNvbW0uYyBiL2RyaXZlcnMvbmV0L3BoeS9tb3RvcmNvbW0uYwo+IGluZGV4IDcwODQ5MWJjMS4u
MzJlYjVjZTkzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L3BoeS9tb3RvcmNvbW0uYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L3BoeS9tb3RvcmNvbW0uYwo+IEBAIC02LDYgKzYsNyBAQAo+ICAgKiBB
dXRob3I6IEZyYW5rIDxGcmFuay5TYWVAbW90b3ItY29tbS5jb20+Cj4gICAqLwo+Cj4gKyNpbmNs
dWRlIDxsaW51eC9jbGsuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2V0aGVyZGV2aWNlLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+IEBA
IC0xMDQzLDYgKzEwNDQsMjkgQEAgc3RhdGljIGludCB5dDg1MzFfc2V0X2RzKHN0cnVjdCBwaHlf
ZGV2aWNlICpwaHlkZXYpCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gKy8qKgo+ICsgKiB5
dHBoeV9nZXRfYW5kX2VuYWJsZV9yZWZjbGsoKSAtIGdldCBhbmQgZW5hYmxlIHRoZSBQSFkgcmVm
ZXJlbmNlIGNsb2NrCj4gKyAqIEBwaHlkZXY6IGEgcG9pbnRlciB0byBhICZzdHJ1Y3QgcGh5X2Rl
dmljZQo+ICsgKgo+ICsgKiBBIGNyeXN0YWwtbGVzcyBZVDg1MjEvWVQ4NTMxIHRha2VzIGl0cyAy
NSBNSHogcmVmZXJlbmNlIGZyb20gdGhlIFNvQy4gV2hlbgo+ICsgKiB0aGF0IHJlZmVyZW5jZSBp
cyBkZXNjcmliZWQgYXMgYSBjbG9jaywgZW5hYmxlIGl0IGZvciB0aGUgbGlmZSBvZiB0aGUKPiAr
ICogZGV2aWNlLiBJdCBpcyBvcHRpb25hbCwgc28gY3J5c3RhbC1jbG9ja2VkIGJvYXJkcyBhcmUg
dW5hZmZlY3RlZC4KPiArICoKPiArICogcmV0dXJucyAwIG9yIG5lZ2F0aXZlIGVycm5vIGNvZGUK
PiArICovCj4gK3N0YXRpYyBpbnQgeXRwaHlfZ2V0X2FuZF9lbmFibGVfcmVmY2xrKHN0cnVjdCBw
aHlfZGV2aWNlICpwaHlkZXYpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
aHlkZXYtPm1kaW8uZGV2Owo+ICsgICAgICAgc3RydWN0IGNsayAqY2xrOwo+ICsKPiArICAgICAg
IGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgTlVMTCk7Cj4gKyAgICAg
ICBpZiAoSVNfRVJSKGNsaykpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgUFRSX0VSUihjbGspLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiZmFpbGVkIHRvIGdldCBhbmQgZW5hYmxlIHRoZSByZWZlcmVuY2UgY2xvY2tcbiIpOwoKQSBo
ZWxwZXIgZm9yIGEgc2luZ2xlLWxpbmUgZnVuY3Rpb24gY2FsbCBsb29rcyBsaWtlIGFuIG92ZXJr
aWxsLCBhbmQKcmVxdWlyZXMgc2Nyb2xsaW5nIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBnb2luZyBv
biB3aGVyZSBhbiBvcGVuLWNvZGVkCnZlcnNpb24gd291bGQgYmUgc2VsZi1leHBsYW5hdG9yeSBh
dCB0aGUgZmlyc3QgZ2xhbmNlLgoKTWF5YmUgZm9sZCBpdCBpbnRvIHRoZSB0d28gY2FsbGVyIGZ1
bmN0aW9ucyBpbnN0ZWFkPwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
