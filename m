Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D321EC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 19:29:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C34E206B5
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 19:29:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rP8p1JMG";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LNuEKQdg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C34E206B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=24fEJrczIHMEPRDh0coMh7CfYpfHZio0UNHMqnfhFTs=; b=rP8p1JMGNTImt9bJa9T9j9IPA
	LHM9FzfAuUt2XCnfeWk2V72ORdTxY5mMFrQDytFccOVROchlPmOwAh2eUMawE7oKFoeyooXDAVetI
	AjfdffQlGEPDdSlYYWc/8ydd2LiWZM6Z2MO6XT2r0xIhf6uGCONYQ5JZgwPU2vnGn3Q6KxF6m7v8K
	EbbsD3WsZVu9+szrRXr5j8aXDXdduJItyTcyfTZausxVX5W8YktRFl0L6oObWMsAHzZwq9zTPQ4Wm
	xqQvj+JLRHSNzK6wAUY6DdYONG4jo8sB8HtBayGKjHvHSVOWL0hYz2sLvZKeyzHVzXlBT47IeQWE6
	mv81SNPAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZJ2A-00007N-UW; Sun, 01 Nov 2020 19:28:58 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZJ28-00006m-56
 for linux-rockchip@lists.infradead.org; Sun, 01 Nov 2020 19:28:57 +0000
Received: by mail-oi1-x22c.google.com with SMTP id m143so3182378oig.7
 for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2020 11:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sejNXyIRsdcu2WUziHw51wGZMCFZt9qTIdE3tu+xMN0=;
 b=LNuEKQdgCG05WFjwxcv074AoxHdOAJJD4t8bHpx1A2V6VIfoGOICivA6Nzkd8vL+h/
 AtZUbbmoDSLqp7rlD5l/vc+pqmsbRgqcHpEQZU+QqKNF4e6pX6N+rW2E/MPMkoiScX+l
 Ghgs9m2GESj8m20845alWWml+vyusbtZwUE5EU2CGW/1xmsGI1HFkYDpHnEFr9vAqBO5
 PaX14+D9aaYiwaeQit0edRKacWMs5BqSoYfOiXr6qyzJo2EgqBjR5C7NN+UIWN8s1tk4
 bLXEN1aS/7Yz7eXzDzPtXzvbLg1fIajSC4WRABT3U3cPW05RajZFUvIHbm4sVlgkDT3z
 /6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sejNXyIRsdcu2WUziHw51wGZMCFZt9qTIdE3tu+xMN0=;
 b=fotjqYwnoC18ND3h9KNaPe9xLu1KN8flcfnD4cKGKpph9PAW+02SXj2yGR1S7rfIVx
 pEP1xe6p/9gZ7QLnsAKsUk9Tcp/pZGBvTyCxtg9W0/CXDh0476u2da/HHuZwZWd9iMnu
 v07QKmPtvDyD7FX6ZgPQWx8OX9jFi4j14wAdzgB9FpWz9cpv1pLhADg1o9Ux3u8sI9+V
 BFQzC/YnYyg6KxN/kwc3dgTkoGHAV7GkKuFN/ziSj8QwRlnniDkEbQiCd3zuIYu8iT9k
 rDkSHhWnYZk0WjN67EiXxTg0CJwadwe9Pt8ZvrECMUO6Gr7AfP7bmS3pZPjbzRiOJ+ea
 qIYQ==
X-Gm-Message-State: AOAM533YT15NI6tNbG7orjAnjfTnNpyfO++MAiNmvvm/AU64WbWyNcDE
 uarr0FMbPBqr3T05HWrRPSUWOAa/YblJWw0REx0=
X-Google-Smtp-Source: ABdhPJz95i/mP5RvFgC5tl9jnp/ehIk/Tek1+Epa7zB1p+dXxdrwRz/lDh7N+Cmv+DHpRw4zIdX801teWzqkBvMsiMY=
X-Received: by 2002:aca:4e54:: with SMTP id c81mr5862075oib.47.1604258932721; 
 Sun, 01 Nov 2020 11:28:52 -0800 (PST)
MIME-Version: 1.0
References: <83376abe-f2c4-4b64-ba24-4c15cdc49d3f@gmail.com>
In-Reply-To: <83376abe-f2c4-4b64-ba24-4c15cdc49d3f@gmail.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Sun, 1 Nov 2020 20:28:39 +0100
Message-ID: <CAFqH_505Cy=dtxBs6f5e-4K6Cy18p1Jp5iQ7o3Z80rBRSZ=Otg@mail.gmail.com>
Subject: Re: [regression,
 bisected] rk3399-gru-kevin does not boot with 5.10-rc1
To: Vicente Bergas <vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_142856_237778_D0D00691 
X-CRM114-Status: GOOD (  12.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Gwendal Grignou <gwendal@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Colin Cross <ccross@android.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVmljZW50ZSwKCk1pc3NhdGdlIGRlIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNv
bT4gZGVsIGRpYSBkdi4sIDMwIGTigJlvY3QuCjIwMjAgYSBsZXMgMjM6MDQ6Cj4KPiBIaSwKPiBj
b21taXQgZGQ5MmY3ZGZlMWJhM2JhZDU1NmM4YTUyOWVkYWNjZTdjNmZkMDE5NQo+IHBsYXRmb3Jt
L2Nocm9tZTogS2NvbmZpZzogUmVtb3ZlIHRoZSB0cmFuc2l0aW9uYWwgTUZEX0NST1NfRUMgY29u
ZmlnCj4gYnJva2UgYm9vdGluZyByazMzOTktZ3J1LWtldmluLgo+CgpJIGRpZG4ndCB0ZXN0IHll
dCBidXQgSSBkaWRuJ3Qgc2VlIGFueSByZWdyZXNzaW9uIG9uIEtlcm5lbENJIHNvIEkKc3VzcGVj
dCB0aGF0IHlvdSdyZSB1c2luZyBhIGN1c3RvbS9kaXN0cm8gb3V0LW9mLXRyZWUgZGVmY29uZmln
IHRoYXQKeW91IG5lZWQgdG8gdXBkYXRlIGFmdGVyIHRoYXQgY2hhbmdlLiBNRkRfQ1JPU19FQyB3
YXMgZGVwcmVjYXRlZCBzb21lCnZlcnNpb25zIGFnbyBpbiBmYXZvciBvZiBDUk9TX0VDLiBNYWtl
IHN1cmUgeW91IGhhdmUgdGhlIGZvbGxvd2luZwpjb25maWdzIGVuYWJsZWQgaW4geW91ciBkZWZj
b25maWcuCgpDT05GSUdfQ0hST01FX1BMQVRGT1JNUwpDT05GSUdfQ1JPU19FQwpDT05GSUdfTUZE
X0NST1NfRUNfREVWCgoKPiBUaGUgZGlzcGxheSBkb2VzIG5vdCB0dXJuIG9uIGFuZCB0aGVyZSBh
cmUgbm8gZWFzeSBtZWFucyB0byBhY2Nlc3MgdGhlCj4gc2VyaWFsIHBvcnQsIHNvLCBubyBtb3Jl
IGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZS4KPgo+IFJlZ2FyZHMsCj4gICBWaWNlbnRlLgo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
