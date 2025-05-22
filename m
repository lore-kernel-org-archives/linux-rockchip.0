Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E24C54ED0
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrhzG7kNXp7EGqI7NU+JExyVMK21A9joT52HaQZO7YI=; b=LHuM3b1w5301lU
	cN6JcUtFO786xoiK13QWH3GkWMJr1HIgj2biUV2G1eU87pyV8oLWYV/S9kY9QbfkEochu52c3s59Y
	yPvnCJtSv+N9dDMThTcjEao5i9S/9nI5bYrbbNJsLKar5xFRlwQ5S6srni/8PEuQTg8v/rbDdTZjM
	tBF5LUzjMIpWhOBtfB7QBQw7RRhNUUkYyHG1T51wo/U/GNK+jSKbxYWcQYz/5Yo30AN4dHBrsTcSC
	X9E6lNqgVwxks1eOZpaoHStSXETY46poAWI3AYZpSKMGqYGtR9BmHgNalvRtLsZyfFTV4NG/aNIKC
	HLOQlxJYoxur8lxAd2JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIAgJ-00000001rny-0sO1;
	Thu, 22 May 2025 18:30:15 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIAFz-00000001ovO-32Ss
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 18:03:05 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-7c9677cd6d7so850765085a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 May 2025 11:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1747936982; x=1748541782; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J/udtId/XxzUAgerzFd20anDTdLUkEu2nN7uwbduy4g=;
        b=TqgGTHL3z24NSgbHjy+RRbZ2OzWCNOzMJSLa+9/iemlJRKdk5fJkVMc40hyUdGy7fI
         1GubMYRk/IJlDmBM8+y64FdurexMh1/LiPLUiwqOTGliyYpPNHPRAhgcFes35VshhJ6Y
         nxoYe8TddFTAICvCIF1VFcMmhh8EZDc1es9BFR2QXZgfEGHhPJ781EVsXUcFn9m+nSct
         ebz52mTFFo068q4PVORUhK2iTuk5ZdVph3zsi7/vKVXXtHWNEl9RKQ1zidkXG1s5uq54
         Z+9BtE9rj5gDxROGlTsDqM7pA069kTFJ3jZT9KznrYJKcgBJi2ufdRQJfXHWoXWnQX3j
         OzqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747936982; x=1748541782;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J/udtId/XxzUAgerzFd20anDTdLUkEu2nN7uwbduy4g=;
        b=GbnZIlmBRAwuJ1BM1OvZFP7J6JWa/XJo3jU6EJXVp3vvReaMrHTlxW1I8Op0qv1BTN
         w810eTJieCzPYVsh6cnfdWTx9QrXIkpHv1XzDan6jjqAzH+LCJskmLJNcI3ZH2r5C7dd
         oEIa/fDfYASNZLw354KS4+yK0blUMvIuPaweDH0iiFTXZ0eUOThG4S4+6MzUiYovzH2K
         aVpiccRyzDcqfDC0yitkxVea18Z9KLvVuaJPSsgRwhtWF2AWtzhf40y8bUfosncVBR5z
         i1PamyUzK4KqPWS2al6T9fP93woWGMLA3IhVQpAhycc4vXJsUcenmpDLb61WWV+vcAle
         IViw==
X-Forwarded-Encrypted: i=1; AJvYcCX8fiKG8sFr/c/wlamMW3h4bUc3etrdDmqJGMBDCy4k9svnYSiOoKA5uGpSNdT6+GVqT5W83RwI8IJhXkr5bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9JrsMshDnbFCm+LsHjUa52I3QlcbBK6QUMwZpleFD8oOGbBlm
	qjf92bI9KEqnA2igFWGrMVygDZiL1UgRTkrFiKTZKElNjPmnKe45szD2cwnkQK1YadY=
X-Gm-Gg: ASbGncsqD8sG2yKI3XZ1VDb38h5zpezMr5QglzX/NBDhL+0F+R/dayT7IwbwUufdvB/
	uuyLgFLahHR3Ne9bRsJeGC86tEjASMtSqAUhvie3i5o/Tm/CqkSPP9ORWwMEW1Ajsxn6f4URE4K
	YiJJgrzGQrPmai11gt+zr6hsqb/8Ui6/ft9zE+aIrkOGUI2Av6XI9dN/kJpurclOLDIJWfpnFEG
	JL9y0DEsoB4RTywNi7xKYjAQh40ifTaEzCpklCq0dEKsDBFRAVpA/F3JSS7IcKq0n5OWeFSNTgv
	4rNv9gc4iFvccjFC13oyIvlsX3Ea+wSo1Fh1S8unoXwYHkL6WNrwD26OSAW4OyYsGr4=
X-Google-Smtp-Source: AGHT+IHh4iw4dgUV3S3EY22uzVTY0YQII61ellrTPDPBr9fV911fwzk1oNA0AI/vndoigz6Eq9Za+A==
X-Received: by 2002:a05:620a:d8d:b0:7c5:60c7:339 with SMTP id af79cd13be357-7cd46718a88mr4026950085a.9.1747936981809;
        Thu, 22 May 2025 11:03:01 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b2fc::5ac? ([2606:6d00:17:b2fc::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd468b62ecsm1052642185a.82.2025.05.22.11.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 11:03:01 -0700 (PDT)
Message-ID: <0c261c9aad759d791e0a576a47bbd064f28148e9.camel@ndufresne.ca>
Subject: Re: [PATCH v3 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: "Rob Herring (Arm)" <robh@kernel.org>, Tomeu Vizoso
 <tomeu@tomeuvizoso.net>
Date: Thu, 22 May 2025 14:03:00 -0400
In-Reply-To: <174742024812.3649303.12389396177218408388.robh@kernel.org>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
	 <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
	 <174742024812.3649303.12389396177218408388.robh@kernel.org>
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_110303_948056_41EA2677 
X-CRM114-Status: GOOD (  20.09  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKCkxlIGx1bmRpIDE5IG1haSAyMDI1IMOgIDA2OjM1IC0wNTAwLCBSb2IgSGVycmlu
ZyAoQXJtKSBhIMOpY3JpdMKgOgo+IAo+IE9uIEZyaSwgMTYgTWF5IDIwMjUgMTg6NTM6MTUgKzAy
MDAsIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRoZSBOZXVy
YWwgUHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuCj4gPiAKPiA+IHYyOgo+ID4gLSBB
ZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBjb3JlLCBlYWNoIHdpdGgg
aXRzIG93bgo+ID4gwqAgSU9NTVUpCj4gPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJh
c3RpYW4gUmVpY2hlbAo+ID4gCj4gPiB2MzoKPiA+IC0gU3BsaXQgcmVnaXN0ZXIgYmxvY2sgaW4g
aXRzIGNvbnN0aXR1ZW50IHN1YmJsb2NrcywgYW5kIG9ubHkgcmVxdWlyZQo+ID4gwqAgdGhlIG9u
ZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFzIEZyYXR0YXJvbGkpCj4g
PiAtIEdyb3VwIHN1cHBsaWVzIChSb2IgSGVycmluZykKPiA+IC0gRXhwbGFpbiB0aGUgd2F5IGlu
IHdoaWNoIHRoZSB0b3AgY29yZSBpcyBzcGVjaWFsIChSb2IgSGVycmluZykKPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3Jh
LmNvbT4KPiA+IC0tLQo+ID4gwqAuLi4vYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS55
YW1swqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNjIgKysrKysrKysrKysrKysrKysrKysrCj4gPiDC
oDEgZmlsZSBjaGFuZ2VkLCAxNjIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gCj4gTXkgYm90IGZvdW5k
IGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIG9uIHlvdXIgcGF0Y2g6CgpZ
ZXMsIGFuZCBpdCBmb3VuZCBhbmQgcmVwb3J0ZWQgaXQgMjUgdGltZXMsIGNhbiB5b3UgZml4IGl0
IHBsZWFzZSA/CgpOaWNvbGFzCgo+IAo+IHlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoKPiAKPiBk
dHNjaGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOgo+IC9idWlsZHMvcm9iaGVycmluZy9kdC1yZXZp
ZXctY2kvbGludXgvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hp
cCxya25uLWNvcmUueWFtbDogcHJvcGVydGllczpyZWctCj4gbmFtZXM6ICdvbmVPZicgY29uZGl0
aW9uYWwgZmFpbGVkLCBvbmUgbXVzdCBiZSBmaXhlZDoKPiAJW3snY29uc3QnOiAncGMnfSwgeydj
b25zdCc6ICdjbmEnfSwgeydjb25zdCc6ICdjb3JlJ31dIGlzIHRvbyBsb25nCj4gCVt7J2NvbnN0
JzogJ3BjJ30sIHsnY29uc3QnOiAnY25hJ30sIHsnY29uc3QnOiAnY29yZSd9XSBpcyB0b28gc2hv
cnQKPiAJRmFsc2Ugc2NoZW1hIGRvZXMgbm90IGFsbG93IDMKPiAJMSB3YXMgZXhwZWN0ZWQKPiAJ
MyBpcyBncmVhdGVyIHRoYW4gdGhlIG1heGltdW0gb2YgMgo+IAloaW50OiAibWluSXRlbXMiIGlz
IG9ubHkgbmVlZGVkIGlmIGxlc3MgdGhhbiB0aGUgIml0ZW1zIiBsaXN0IGxlbmd0aAo+IAlmcm9t
IHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvaXRlbXMueWFt
bCMKPiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmtubi1jb3JlLmV4YW1wbGUuZHRiOgo+
IG5wdS1jb3JlQGZkYWIwMDAwIChyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCk6IGNvbXBh
dGlibGU6ICdvbmVPZicgY29uZGl0aW9uYWwgZmFpbGVkLCBvbmUgbXVzdCBiZSBmaXhlZDoKPiAJ
Wydyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcCcsICdyb2NrY2hpcCxya25uLWNvcmUtdG9w
J10gaXMgdG9vIGxvbmcKPiAJJ3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wJyBpcyBub3Qg
b25lIG9mIFsncm9ja2NoaXAscmszNTg4LXJrbm4tY29yZSddCj4gCWZyb20gc2NoZW1hICRpZDog
aHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS55YW1s
Iwo+IC9idWlsZHMvcm9iaGVycmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxya25uLWNvcmUuZXhhbXBsZS5kdGI6Cj4g
bnB1LWNvcmVAZmRhYjAwMDAgKHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wKTogcmVnOiBb
WzAsIDQyNTU4NDIzMDQsIDAsIDM2ODY0XV0gaXMgdG9vIHNob3J0Cj4gCWZyb20gc2NoZW1hICRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS55
YW1sIwo+IC9idWlsZHMvcm9iaGVycmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxya25uLWNvcmUuZXhhbXBsZS5kdGI6
Cj4gbnB1LWNvcmVAZmRhYzAwMDAgKHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUpOiBjb21wYXRp
YmxlOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3QgYmUgZml4ZWQ6Cj4gCVsn
cm9ja2NoaXAscmszNTg4LXJrbm4tY29yZScsICdyb2NrY2hpcCxya25uLWNvcmUnXSBpcyB0b28g
bG9uZwo+IAkncm9ja2NoaXAscmszNTg4LXJrbm4tY29yZScgaXMgbm90IG9uZSBvZiBbJ3JvY2tj
aGlwLHJrMzU4OC1ya25uLWNvcmUtdG9wJ10KPiAJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmtubi1jb3JlLnlhbWwjCj4gL2J1aWxk
cy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51eC9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrbm4tY29yZS5leGFtcGxlLmR0YjoKPiBucHUtY29yZUBm
ZGFjMDAwMCAocm9ja2NoaXAscmszNTg4LXJrbm4tY29yZSk6IHJlZzogW1swLCA0MjU1OTA3ODQw
LCAwLCAzNjg2NF1dIGlzIHRvbyBzaG9ydAo+IAlmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZp
Y2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbCMKPiAKPiBkb2Mg
cmVmZXJlbmNlIGVycm9ycyAobWFrZSByZWZjaGVja2RvY3MpOgo+IAo+IFNlZQo+IGh0dHBzOi8v
cGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9kZXZpY2V0cmVlLWJpbmRpbmdzL3BhdGNoLzIw
MjUwNTE2LTYtMTAtcm9ja2V0LXYzLTEtNzA1MWFjOTIyNWRiQHRvbWV1dml6b3NvLm5ldAo+IAo+
IFRoZSBiYXNlIGZvciB0aGUgc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbGF0ZXN0IHJjMS4gQSBk
aWZmZXJlbnQgZGVwZW5kZW5jeQo+IHNob3VsZCBiZSBub3RlZCBpbiAqdGhpcyogcGF0Y2guCj4g
Cj4gSWYgeW91IGFscmVhZHkgcmFuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBkaWRuJ3Qg
c2VlIHRoZSBhYm92ZQo+IGVycm9yKHMpLCB0aGVuIG1ha2Ugc3VyZSAneWFtbGxpbnQnIGlzIGlu
c3RhbGxlZCBhbmQgZHQtc2NoZW1hIGlzIHVwIHRvCj4gZGF0ZToKPiAKPiBwaXAzIGluc3RhbGwg
ZHRzY2hlbWEgLS11cGdyYWRlCj4gCj4gUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQgYWZ0ZXIg
cnVubmluZyB0aGUgYWJvdmUgY29tbWFuZCB5b3Vyc2VsZi4gTm90ZQo+IHRoYXQgRFRfU0NIRU1B
X0ZJTEVTIGNhbiBiZSBzZXQgdG8geW91ciBzY2hlbWEgZmlsZSB0byBzcGVlZCB1cCBjaGVja2lu
Zwo+IHlvdXIgc2NoZW1hLiBIb3dldmVyLCBpdCBtdXN0IGJlIHVuc2V0IHRvIHRlc3QgYWxsIGV4
YW1wbGVzIHdpdGggeW91ciBzY2hlbWEuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
