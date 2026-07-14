Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC921C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 12:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMZZKZ1bZWXpzoyd1UweJRtD7ZjO28wzFhz0FqsZU/E=; b=yiPGb1W9ksGCO7
	znaZXR8I1ClBqgZKDsa7Vnxv2InVBQA0vKrdcQQ4KJbdarQUfrN9nucAyAUsf0z3ISoITPsajmxeN
	X3guBH+WwY6ehM+VvuLUcsbnvUPRaf2QmEA9NUjAeBM5fZePD+TJQ6tmHipcNShXaNFSiUFTsUBxe
	seOCdpH4Gi77nmxvXbKlJloGVlLVquMFKuJrsWXb+1ICMu0yaawRsCAY+q2QQQlaIEJMupZ4mjUKY
	zt5Q4b3w4zQOZgAwcQmhsDt6aBMDLYafwZ8eO51eMp2Z9QX3Y9oQBnnHiy7BGSq0eGqnbTXzyunkN
	PBi1sdNHrLxLPE3dT7wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcj9-0000000C37L-3lDt;
	Tue, 14 Jul 2026 12:59:11 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcil-0000000C2aN-1peI
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 12:58:49 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c15cf78d1a2so138746166b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 05:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784033925; cv=none;
        d=google.com; s=arc-20260327;
        b=fZSbNX09OQDhSGo5EwH2lUFL9D1vvsA9DmAjk7quqfJumC/2oHnX8bSwFdu84Ytnsw
         IKX22hWnMbQnPuo5BbE4uy2YtEmAhlsj88+sA/7oYoSD97OS/EJqYnY2rIjjYw4KRab7
         Rb6uByqHNsG5OObfqSV99+M3wUvg7Xr1zQhmMm1CjdNYYK9H6wQ7m6WW4ZK4mpyAPCpV
         uiNvlx+pm0e8yIG912RvXX6e3GvlZxNYP0Z+agH2gXHfD+OR0FCEfMGVRm6ynzYdvShz
         3k58x+LsktTXd49Y3j1zjH9IoT5ex1Zx3h0cX6qwfbe17N1wyF2RQHmtc5fYVLKKwqXt
         eDcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        fh=BCXTSsDesVaV0u9q14Nehlg8c7ZmbSx6KvTnOfSAGWc=;
        b=Le7QtYril14qC3zc0XPftqvF2H2clmMynLXmnCtTYZFXIV1wiS9Xez6+6ZwIP13IA/
         Wztau3B7znUd6R5VwQ1BPbh954lUDZcCkqDyfOznJLNkibEEBun1I1zyQ0ILeXdqfVh+
         rwXAOahYuxzfQ9cQIypJbqgxdneut+wTLVAfqGxXxMytolVyJNHviG8AHgY5xIS+zMJg
         xKSzvC5QzmhVRE9X40dDgYBdeA7BqkczcfK8FyGmfNHsiX72Ijbf3m2EbVHh8UnQzfTm
         ORvGQzUVrJI9+eaxtr41M1BPVcz91Ql025Z5n8r7WMZCxBDZukc+88G4RIWk8dfJZyyD
         JDtA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784033925; x=1784638725; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        b=6si5HvjewZR1Ui1qngsbIGP2UqRkHw16P0mDe3WqLAmlJYq+sRiTg8Ah3iKydbQTbM
         bdnZTqFXPYsn508TZtacZLvyH9cw93fASSHUZifUvZWA5USJaZwt61kelS8nzM1QvbUX
         rYeNNrAOkiGdGZzi2Z5lLQzwxK6qpc1H/mTKLZi+gA1pd0YM7WUQ5KD3zpYYU2Ntkreq
         a5cyofJMjkLfX+zWA9BmTgV8BRdIRJkdEGLuGuzmARbawf9t1Tczz87dV49SqdYoFdbh
         hwmsCJWqSJr2m2hq+tFWxtG2PDMcijSe9apgB0Ikzkb3jg8Qng9Lz2TjrxK8tXvHp7vG
         /KWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784033925; x=1784638725;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PIv0NBktmIn6q/0AjjqpDjQC9jjLzFFsFNvKJhIbZxA=;
        b=bXGt/wPgxIoF1a1ZQ2KA8d0vt2FgPALuVmCHohXs6jbGjWGgatT906ATPSH+3Fjodd
         YyrQ7b1b8X+9ZH0xVZs4CiRgO848BplgH3HZhjEJsXNrnGH03zB34wptaMCiNOLgClEb
         TMuTC4DrqGhbqiH8HGF6MRSOV+re2Y8su0v+9pSkg/pP4XACML0Knvk0jxFFG6deMoc1
         auTdcQNLkuyO2ZhDE+BXtLa2AisbzpowUfVy0riFqPPWtK7ALsFnJWTQIFQGqucFxdAa
         P920II7opg+2dvSBcEKahYEf02tagV+2v8RK53bH/gAA0AQxoRUc9uzCKMFOt2Wrw1xi
         4/vQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVQ8+r75T2/zaUOJy+9a4vQfcL4uxWVa6OtW0OCjnHY2jOcwW9ubkEczOJ8TxTrLtVDiXJUJaciJwzar1zgg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywx0SWWEwFNT6rwdmBL66SECIVWia2njw+TYRVdsB36LNj8wmfT
	P3m2VxfXStg4EOzlkycT8+d/e+iQ0e9TG6uPiqjiQBv4LeES57CXI2c7daEUW6tpykvJuCHXM5/
	NGxGJk51Kud14Gq/IjQWg2MUb6wcObddBdeLVOGsjRws1KRkx8Yu15ZLsSUBR
X-Gm-Gg: AfdE7cnEMlEgnPYzisE+ZJoVBqjSjFFTBQ0c3OcqLN25NIpWm+xVxWONID5XhA0q9Xs
	mCvdtNJ2cAZsl8PjVN87GOGhqRX3zndqVOOhlsvgKwKmM3a65sWMU44zhFH+lG6Jhfd6GiJzxUk
	AUod7xcrXiQlvVN06DIsFiHQiqW7hNszIRdUgG8WQnR14m09uozyxFNDxJrEpAEu/aoN763e7Ie
	OomH4iCQOx7b2vf710S+/iYgu8qdeSAHSW4y2oUrhwCQxTir3SsK0u5PIxuAqFQmimobKqD5Q==
X-Received: by 2002:a17:907:1c25:b0:c16:1a00:3feb with SMTP id
 a640c23a62f3a-c161e85b326mr593508966b.15.1784033925067; Tue, 14 Jul 2026
 05:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com> <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
In-Reply-To: <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 16:58:36 +0400
X-Gm-Features: AUfX_mwqTET3FiIzNurio_HDsDSeDrTvOa3obSG01zw6YFS6xA_qInQEOIhwwIc
Message-ID: <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC configuration
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_055847_521397_1FE2BD41 
X-CRM114-Status: GOOD (  14.03  )
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

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMjo0OOKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBNb24sIDI3IEFwciAyMDI2IDA4OjU3OjEzICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4gPiBUaGUgUENJZSBTU0MgY29uZmlndXJhdGlvbiBmb3IgdGhlIFJL
MzU4OCBhbmQgUkszNTc2IFNvQ3MgcmVxdWlyZWQKPiA+IGFkZGl0aW9uYWwgdHVuaW5nIHdoaWNo
IGlzIG1pc3NpbmcuIFdoZW4gYWRkaW5nIHRoZXNlIHNhbWUgU1NDCj4gPiBjb25maWd1cmF0aW9u
cyBmb3IgYm90aCBvZiB0aGVzZSB0d28gU29DcywgYXMgd2VsbCBhcyB1cGNvbWluZwo+ID4gcGxh
dGZvcm1zLCBpdCdzIG9idmlvdXMgdGhlIFNTQyBzZXR1cCBjb2RlIHdhcyBsYXJnZWx5IGR1cGxp
Y2F0ZWQKPiA+IGFjcm9zcyB0aGUgcGxhdGZvcm0tc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmdW5j
dGlvbnMuIFRoaXMgYmVjb21lcwo+ID4gaGFyZGVyIHRvIG1haW50YWluIGFzIG1vcmUgcGxhdGZv
cm1zIGFyZSBhZGRlZC4KPiA+Cj4gPiBbLi4uXQo+Cj4gQXBwbGllZCwgdGhhbmtzIQo+Cj4gWzEv
MV0gcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IENvbnNvbGlkYXRlIFNTQyBjb25maWd1
cmF0aW9uCj4gICAgICAgY29tbWl0OiAwYjMxZjI5NzU1N2ZmZjA5NDE3NjllODI1NzE5ODE1MWEw
ZmJlOGJmCgpUaGlzIGNvbW1pdCBicmVha3MgVVNCMyBvcGVyYXRpb24gb24gUkszNTc2IChhdCBs
ZWFzdCBpbiBob3N0IG1vZGUpLApjYXVzaW5nIGFuIGVuZGxlc3MgZmxvb2Qgb2YgbWVzc2FnZXMg
bGlrZSB0aGlzIGV2ZXJ5IHNlY29uZCBpbiBkbWVzZzoKCnVzYiB1c2IyLXBvcnQxOiBDYW5ub3Qg
ZW5hYmxlLiBNYXliZSB0aGUgVVNCIGNhYmxlIGlzIGJhZD8KClVTQiAyLjAgcGFydCBlbnVtZXJh
dGVzLCBidXQgVVNCIDMuMCBkb2Vzbid0LiBUZXN0ZWQgb24gdHdvIGRpZmZlcmVudApkZXZpY2Vz
IGhhdmluZyBhIENvcmVDaGlwcyBTTDYzNDEgVVNCIDIuMC9VU0IgMy4wIGh1YiBvbmJvYXJkCmNv
bm5lY3RlZCB0byAmdXNiX2RyZDFfZHdjMywgYmlzZWN0ZWQgdG8gdGhpcyBjb21taXQuCgpIYXMg
dGhpcyBiZWVuIHJlcG9ydGVkIHlldCwgb3Igc2hhbGwgSSBpbnZlc3RpZ2F0ZSBmdXJ0aGVyIHdo
aWNoIHBhcnQKb2YgdGhlIHBhdGNoIGNhdXNlcyB0aGUgYnJlYWthZ2U/CgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQotLS0KMGIzMWYyOTc1NTdmZmYwOTQxNzY5ZTgyNTcxOTgxNTFhMGZiZThiZiBpcyB0
aGUgZmlyc3QgYmFkIGNvbW1pdApjb21taXQgMGIzMWYyOTc1NTdmZmYwOTQxNzY5ZTgyNTcxOTgx
NTFhMGZiZThiZgpBdXRob3I6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgpE
YXRlOiAgIE1vbiBBcHIgMjcgMDg6NTc6MTMgMjAyNiArMDgwMAoKICAgIHBoeTogcm9ja2NoaXA6
IG5hbmVuZy1jb21icGh5OiBDb25zb2xpZGF0ZSBTU0MgY29uZmlndXJhdGlvbgoKICAgIFRoZSBQ
Q0llIFNTQyBjb25maWd1cmF0aW9uIGZvciB0aGUgUkszNTg4IGFuZCBSSzM1NzYgU29DcyByZXF1
aXJlZAogICAgYWRkaXRpb25hbCB0dW5pbmcgd2hpY2ggaXMgbWlzc2luZy4gV2hlbiBhZGRpbmcg
dGhlc2Ugc2FtZSBTU0MKICAgIGNvbmZpZ3VyYXRpb25zIGZvciBib3RoIG9mIHRoZXNlIHR3byBT
b0NzLCBhcyB3ZWxsIGFzIHVwY29taW5nCiAgICBwbGF0Zm9ybXMsIGl0J3Mgb2J2aW91cyB0aGUg
U1NDIHNldHVwIGNvZGUgd2FzIGxhcmdlbHkgZHVwbGljYXRlZAogICAgYWNyb3NzIHRoZSBwbGF0
Zm9ybS1zcGVjaWZpYyBjb25maWd1cmF0aW9uIGZ1bmN0aW9ucy4gVGhpcyBiZWNvbWVzCiAgICBo
YXJkZXIgdG8gbWFpbnRhaW4gYXMgbW9yZSBwbGF0Zm9ybXMgYXJlIGFkZGVkLgoKICAgIFNvIGV4
dHJhY3QgdGhlIGNvbW1vbiBTU0MgbG9naWMgaW50byBhIHNoYXJlZCBoZWxwZXIgZnVuY3Rpb24s
CiAgICBya19jb21icGh5X2NvbW1vbl9jZmdfc3NjKCkuIFRoaXMgY2xlYW5zIHVwIHRoZSBwZXIt
cGxhdGZvcm0gZHJpdmVycwogICAgYW5kIGNlbnRyYWxpemVzIHRoZSBzdGFuZGFyZCBjb25maWd1
cmF0aW9uIGFzIHBvc3NpYmxlLgoKICAgIFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVp
bC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KICAgIFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgogICAgU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5A
cm9jay1jaGlwcy5jb20+CiAgICBMaW5rOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMTc3NzI1
MTQzMy0xMTA0NjYtMS1naXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20KICAg
IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CgogZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgfCAxNzMKKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNzMgaW5zZXJ0aW9ucygrKSwgMTAwIGRl
bGV0aW9ucygtKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
