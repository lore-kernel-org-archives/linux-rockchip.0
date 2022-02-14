Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B26DC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 14:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=je7wAQIuhfCJiphT3YfxquiR87Thr0Mzb6bKKOvCZJ4=; b=nZUV4s6Q7qk3op
	KFqstyiApHW+LAFO6IJfNQSU69HEtgKJTBoCeJuN5CaRE1NUvgt6LQGHb7MwrDw/NSCE0NYXGksRO
	8sJnz+9gLMZ/lnIKMrMLaVyOmTejv3h0CwRkI9nZeMNZp1F6fkex1eulVW9tOxZgCGD/Pq8OKEJvG
	ZiiMe5ws1OV0Z5ctKZ2rllo2XlO9Y0wi3nzikfBvdLTXtnPQaCt1ot2Zs7NhXkIRwHEE4hShudFHs
	tCknJBLZl9EiQngma9eksy7hBfiA0RaUBqix4Jl/ATwYR73S0267jibKmxNTfty90X3wCoublaHw+
	07be0rAMHrVcxYBsz9GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJcFu-00FeoX-6X; Mon, 14 Feb 2022 14:23:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJcFr-00Fene-8Z
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 14:23:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 k127-20020a1ca185000000b0037bc4be8713so11726157wme.3
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 06:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vdZPhzMc8OOpbl2UuEs2+SUCoZTK13ldzN1cjH3Gy1w=;
 b=RHdXdgJ2LBE2w7jY+8RfeUnahKmQDX0wrZL3zQcT8VazOJXtScZE9D+jdPlLAAwMcD
 4c3Nu4EuzuFca3UyVr1fZNAIFrDRsnSiFX1QnpZO7SR3V15BPsdLbM95gm3NbENp+6o1
 /lAO9MQBWVVZ/mtr/3x8bf5SCPORJjb5uh7GPT1Ou7jTpft2Vm6fT/+9HmuUB816xXh3
 9n2te1iIrB8kZkuCOr7o9d3xCuZALY4r7B+p4cu/WdTJp/ONaWSQwyHAccxgW5Pe5Gso
 N8wuzD4WFeL8kdGesEefaEMILjY56iSc0FB4K8B49YtyYlBZeQRmDq97O+C0ngyUKOQq
 WM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vdZPhzMc8OOpbl2UuEs2+SUCoZTK13ldzN1cjH3Gy1w=;
 b=ZAdRCnjI/wfm5Sidyj5SkmGUy9LYot9e6yhWIVBlOn5fbwAGu0CzbfT4MAQF8iVcbI
 6kR7Wxzu+KWxzfCP25I0n+/A31E5gRvWVR4rMDE4qYcbrOsVGTI49IH/lePuh4zNgcUA
 jWwYsalcucRvwrfD7YKXFWpPRTnBC6Szv55k7gBlby2Hxps5yFhtR+kTxgQjkPb05JWt
 OsRc6Be/NyyPKA6m0XGxVrnnTyzPqoKE+4dlTwpZhyRPieVFTXAMyESsdWe5eD+CAwQh
 Rp4DajOIHgQkc02s4ipGlQodWtC5DuNZcTdAhQgvNIHbbr4aY5O6Gi2KpzxuEi58aZgn
 NOGA==
X-Gm-Message-State: AOAM5308itNOWLh+2O69gpp+FV0vNeXoM2bal1NLMeNipMyQ5ZsuTh8d
 kD/y0KAyjSTqBoZbs7jiQhWwBw==
X-Google-Smtp-Source: ABdhPJz1ZB2k7y7XczgS1kVpyE+TpVQk6pZ5jgDQ1a3FTos5TRkuSJzEvca4MVay0vYYHF1YKF60aw==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr11388048wmi.33.1644848581602; 
 Mon, 14 Feb 2022 06:23:01 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id u12sm27154831wrs.2.2022.02.14.06.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 06:23:01 -0800 (PST)
Date: Mon, 14 Feb 2022 14:22:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] mfd: rk808: add reboot support to rk808.c
Message-ID: <Ygplw6AbXptTLETT@google.com>
References: <20220208194023.929720-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208194023.929720-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_062303_327743_21288820 
X-CRM114-Status: GOOD (  15.64  )
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

T24gVHVlLCAwOCBGZWIgMjAyMiwgUGV0ZXIgR2VpcyB3cm90ZToKCj4gVGhpcyBhZGRzIHJlYm9v
dCBzdXBwb3J0IHRvIHRoZSByazgwOCBwbWljIGRyaXZlciBhbmQgZW5hYmxlcyBpdCBmb3IKPiB0
aGUgcms4MDkgYW5kIHJrODE3IGRldmljZXMuCj4gVGhpcyBvbmx5IGVuYWJsZXMgaWYgdGhlIHJv
Y2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIGZsYWcgaXMgc2V0Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
RnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gUmV2aWV3ZWQtYnk6
IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPiBBY2tlZC1mb3ItbWZkLWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IC0tLQo+IENoYW5nZWxvZzoKPiBWNToK
PiAtIEZpeCBsZW5ndGggb2YgZXJyb3IgcHJpbnQuCj4gCj4gVjQ6Cj4gLSByZW9yZGVyIHJrODA4
X3Jlc3RhcnRfbm90aWZ5IChUaGFua3MgRG1pdHJ5KQo+IC0gZHJvcCBvZl9wcm9wZXJ0eV9yZWFk
X2Jvb2wgYmVmb3JlIHVucmVnaXN0ZXIgKEdvb2QgY2F0Y2ggRnJhbmspCj4gCj4gVjM6IFRoYW5r
cyBEbWl0cnkhCj4gLSBBZGp1c3QgcHJpb3JpdHkgdG8gYmUgaW4gbGluZSB3aXRoIG90aGVyIHBt
aWMgZHJpdmVycwo+IC0gTW92ZSByZXQgaGFuZGxpbmcgdG8gY2FzZSBzd2l0Y2gKPiAtIE1ha2Ug
ZGVmYXVsdCByZWdpc3RyYXRpb24gZGVidWcKPiAtIEFkZCB1bnJlZ2lzdGVyIGZ1bmN0aW9uIG9u
IHJlbW92YWwKPiAKPiBWMjoKPiAtIFNxdWFzaCB0aGUgcGF0Y2ggZnJvbSBGcmFuayBXdW5kZXJs
aWNoIGZvciByazgwOSBzdXBwb3J0Lgo+IC0gUmVtb3ZlIHN1cHBvcnQgZm9yIHRoZSByazgwNSwg
cms4MDgsIGFuZCByazgxOCBkZXZpY2VzLgo+IC0gT25seSByZWdpc3RlciB0aGUgcmVzZXQgaGFu
ZGxlciBmb3Igc3VwcG9ydGVkIGRldmljZXMuCj4gLSBSZW1vdmUgdW5uZWNlc3NhcnkgZGV2X2Vy
ciBhbmQgZGV2X3dhcm4gc3RhdGVtZW50cy4KPiAtIFJlZ2lzdGVyIHRoZSByZXNldCBoYW5kbGVy
IGRpcmVjdGx5Cj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgICAgICAgfCA0NCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8
ICAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCgpBcHBsaWVkLCB0aGFu
a3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClByaW5jaXBhbCBUZWNobmljYWwgTGVhZCAt
IERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBm
b3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
