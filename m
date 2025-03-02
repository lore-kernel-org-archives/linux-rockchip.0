Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6ABC19F32
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 10:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mFtGj2Lc0Q8+xp07yN8HMYuGKrH2Edys7iVHtDsa9QU=; b=N8M7nBswjFdO907jXhTj8XC1+u
	spsoNxb8xy788174HYMbaDYwpS1a3BnVEGO8Sdeh+lIagvHN0H1VqvthSYKIZg62UwGTBBi0bRJo9
	0bWHEAdwcEsr78vPeWmk9hWyZ1Lhs4Nyr9nQIa19NtuWJ7O63J/nlIK/rdt/AbcJ63sVkMGPu8OTs
	2kc5JtLYPPi++aG/yctb/3Y4E5PLgqZoU98keNdLNg8MeIf1w7Jxh7WXsXf/yC8xupWxKpu8VGxLQ
	/fI/HzsNd7KxA52d9/3L1ItZ8MxBmU+HZ+P3+SA2Mfh+4vUnhibq+SzNE4LkKLt+55vX73P0altQe
	KB5V4RWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toggs-0000000Fosg-3zWv;
	Sun, 02 Mar 2025 10:36:58 +0000
Received: from mail-m32100.qiye.163.com ([220.197.32.100])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toggf-0000000Foq0-1nsK;
	Sun, 02 Mar 2025 10:36:47 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id ca2fcbb2;
	Sun, 2 Mar 2025 18:36:37 +0800 (GMT+08:00)
Message-ID: <1d066210-3d24-4d17-a51c-115f305c5de9@rock-chips.com>
Date: Sun, 2 Mar 2025 18:36:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v7 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Doug Anderson <dianders@chromium.org>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
 <20250224081325.96724-10-damon.ding@rock-chips.com>
 <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5KQ1YdQk9LH0tNSB9OT0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a95566de61f03a3kunmca2fcbb2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohw6Iio6LTINI0sWTxgtPSJL
	PCswCwNVSlVKTE9LQkpKTEJCTUtIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITU9CNwY+
DKIM-Signature: a=rsa-sha256;
	b=kZPZ5ZGSqT9O0E2P1zhbCBACC65/xnByw/wawoT8NmV3MJGsm5Vz/EmaIjjh31vQRVM1tvBiEyj3p3KLGQgzMaS6gwrwRnMh7yLnL3f5XjBUBSwCEZ6Oc1659x4UvaUdCJY3VcYjO8WO8bKPkSI2atxfzX5FRoenqvW6jNTmd2k=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gwJBmCRtBPr279bswslshLIRoVTVjLdcj1Wo5iFAM3w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_023646_014976_05B52A3C 
X-CRM114-Status: GOOD (  25.09  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRG91ZywKCk9uIDIwMjUvMi8yNSA5OjQxLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDEyOjE04oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSBtYWluIG1vZGlmaWNhdGlvbiBp
cyBtb3ZpbmcgdGhlIERQIEFVWCBpbml0aWFsaXphdGlvbiBmcm9tIGZ1bmN0aW9uCj4+IGFuYWxv
Z2l4X2RwX2JpbmQoKSB0byBhbmFsb2dpeF9kcF9wcm9iZSgpLiBJbiBvcmRlciB0byBnZXQgdGhl
IEVESUQgb2YKPj4gZURQIHBhbmVsIGR1cmluZyBwcm9iaW5nLCBpdCBpcyBhbHNvIG5lZWRlZCB0
byBhZHZhbmNlIFBNIG9wZXJhdGlvbnMgdG8KPj4gZW5zdXJlIHRoYXQgZURQIGNvbnRyb2xsZXIg
YW5kIHBoeSBhcmUgcHJlcGFyZWQgZm9yIEFVWCB0cmFuc21pc3Npb24uCj4+Cj4+IEFkZGl0aW9u
YWxseSwgYWRkIHN1cHBvcnQgZm9yICZkcm1fZHBfYXV4LndhaXRfaHBkX2Fzc2VydGVkKCkgdG8g
aGVscAo+PiBjb25maXJtIHRoZSBIUEQgc3RhdGUgYmVmb3JlIGRvaW5nIEFVWCB0cmFuc2ZlcnMu
Cj4gCj4gTWF5YmUgbW92ZSB0aGUgYWRkaXRpb24gb2YgdGhlIGFuYWxvZ2l4X2RwYXV4X3dhaXRf
aHBkX2Fzc2VydGVkKCkgdG8gYQo+IHNlcGFyYXRlIHBhdGNoPwo+IAoKSXQgd291bGQgYmUgYSBn
b29kIGlkZWEuCgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJv
Y2stY2hpcHMuY29tPgo+Pgo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBpbiB2NDoKPj4gLSBVc2UgZG9u
ZV9wcm9iaW5nKCkgdG8gY2FsbCBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSBhbmQKPj4g
ICAgY29tcG9uZW50X2FkZCgpIHdoZW4gZ2V0dGluZyBwYW5lbCBmcm9tIHRoZSBEUCBBVVggYnVz
Cj4+Cj4+IENoYW5nZXMgaW4gdjU6Cj4+IC0gQWR2YW5jZSBQTSBvcGVyYXRpb25zIHRvIG1ha2Ug
ZURQIEFVWCB3b3JrIHdlbGwKPj4KPj4gQ2hhbmdlcyBpbiB2NjoKPj4gLSBVc2UgZGV2bV9wbV9y
dW50aW1lX2VuYWJsZSgpIGluc3RlYWQgb2YgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkKPj4g
LSBBZGQgYSBuZXcgZnVuY3Rpb24gYW5hbG9naXhfZHBfcmVtb3ZlKCkgdG8gZW5zdXJlIHN5bW1l
dHJ5IGZvciBQTQo+PiAgICBvcGVyYXRpb25zCj4+Cj4+IENoYW5nZXMgaW4gdjc6Cj4+IC0gRml4
IHRoZSBtaXNzcGVsbGluZyBvZiB3b3JkICdvcGVyYXRpb25zJyBpbiBjb21taXQgbWVzc2FnZQo+
PiAtIFJlbW92ZSB0aGUgY2hlY2sgcmVsYXRlZCB0byBDT05GSUdfUE0KPj4gLSBSZW1vdmUgdGhl
IHVubmVjZXNzYXJ5IGNhbGwgdG8gcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZCgpIGlm
Cj4+ICAgIGRldm1fcG1fcnVudGltZV9lbmFibGUoKSBmYWlscwo+PiAtIFJlbW92ZSB1bm5lY2Vz
c2FyeSBmdW5jdGlvbiBhbmFsb2dpeF9kcF9yZW1vdmUoKQo+PiAtIEFkZCBuZXcgZnVuY3Rpb24g
YW5hbG9naXhfZHBhdXhfd2FpdF9ocGRfYXNzZXJ0ZWQoKQo+PiAtLS0KPj4gICAuLi4vZHJtL2Jy
aWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgICAgfCAzNyArKysrKysrKysrKysrKy0t
LS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4X2RwX2NvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhf
ZHBfY29yZS5jCj4+IGluZGV4IGE1N2UwNmQzMDNhMS4uZmY4MWMzN2RiZTFkIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUu
Ywo+PiBAQCAtMTU0OCw2ICsxNTQ4LDIyIEBAIHN0YXRpYyBzc2l6ZV90IGFuYWxvZ2l4X2RwYXV4
X3RyYW5zZmVyKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsCj4+ICAgICAgICAgIHJldHVybiByZXQ7
Cj4+ICAgfQo+Pgo+PiArc3RhdGljIGludCBhbmFsb2dpeF9kcGF1eF93YWl0X2hwZF9hc3NlcnRl
ZChzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCB1bnNpZ25lZCBsb25nIHdhaXRfdXMpCj4+ICt7Cj4+
ICsgICAgICAgc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAgPSB0b19kcChhdXgpOwo+PiAr
ICAgICAgIGludCB2YWw7Cj4+ICsgICAgICAgaW50IHJldDsKPj4gKwo+PiArICAgICAgIHBtX3J1
bnRpbWVfZ2V0X3N5bmMoZHAtPmRldik7Cj4+ICsKPj4gKyAgICAgICByZXQgPSByZWFkeF9wb2xs
X3RpbWVvdXQoYW5hbG9naXhfZHBfZGV0ZWN0X2hwZCwgZHAsIHZhbCwgIXZhbCwgd2FpdF91cyAv
IDEwMCwgd2FpdF91cyk7Cj4gCj4gTW9yZSB0aGFuIGhhcHB5IGlmIHNvbWVvbmUgZWxzZSB3YW50
cyB0byBvdmVycnVsZSBtZSwgYnV0IGl0IHNlZW1zCj4gd2VpcmQgdGhhdCB5b3UncmUgbG9vcGlu
ZyBvdmVyIGEgZnVuY3Rpb24gdGhhdCBhbHJlYWR5IGhhcyBhIGxvb3AuCj4gU2hvdWxkbid0IHlv
dSBiZSBjYWxsaW5nIGFuYWxvZ2l4X2RwX2dldF9wbHVnX2luX3N0YXR1cygpIGRpcmVjdGx5Pwo+
IC4uLmFuZCBpZiAiZHAtPmZvcmNlX2hwZCIgeW91IHByb2JhYmx5IHNob3VsZG4ndCBiZSBwb2xs
aW5nIGF0IGFsbC4gSWYKPiBIUEQgaXMgbm90IGhvb2tlZCB1cCBJIHRoaW5rIHdlIGRlY2lkZWQg
aW4gc242NWRzaTg2IHRoYXQgd2Ugc2hvdWxkCj4ganVzdCBzbGVlcCBmb3IgdGhlIG1heGltdW0g
dGltZSAoY2hvb3NpbmcgYSBjb25zZXJ2YXRpdmUgdmFsdWUgaWYgdG9sZAo+IHRvIHdhaXQgZm9y
ZXZlcikuCj4gCgpZZXMsIEkgdGhpbmsgdGhlcmUgaXMgbm8gbmVlZCB0byB1c2UgYW5hbG9naXhf
ZHBfZGV0ZWN0X2hwZCgpLCBhbmQgdGhlIApjb2RlIGFzIHlvdSByZWNvbW1lbmRlZCBpcyBiZXR0
ZXI6CgpzdGF0aWMgaW50IGFuYWxvZ2l4X2RwYXV4X3dhaXRfaHBkX2Fzc2VydGVkKHN0cnVjdCBk
cm1fZHBfYXV4ICphdXgsIAp1bnNpZ25lZCBsb25nIHdhaXRfdXMpCnsKCXN0cnVjdCBhbmFsb2dp
eF9kcF9kZXZpY2UgKmRwID0gdG9fZHAoYXV4KTsKCWludCB2YWw7CglpbnQgcmV0OwoKCWlmIChk
cC0+Zm9yY2VfaHBkKQoJCXJldHVybiAwOwoKCXBtX3J1bnRpbWVfZ2V0X3N5bmMoZHAtPmRldik7
CgoJcmV0ID0gcmVhZHhfcG9sbF90aW1lb3V0KGFuYWxvZ2l4X2RwX2dldF9wbHVnX2luX3N0YXR1
cywgZHAsIHZhbCwgIXZhbCwKCQkJCSB3YWl0X3VzIC8gMTAwLCB3YWl0X3VzKTsKCglwbV9ydW50
aW1lX21hcmtfbGFzdF9idXN5KGRwLT5kZXYpOwoJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQo
ZHAtPmRldik7CgoJcmV0dXJuIHJldDsKfQoKPiAKPiBBc2lkZSBmcm9tIHRoYXQgYW5kIHRoZSBp
ZGVhIG9mIG1vdmluZwo+IGFuYWxvZ2l4X2RwYXV4X3dhaXRfaHBkX2Fzc2VydGVkKCkgdG8gYSBz
ZXBhcmF0ZSBwYXRjaCB0aGlzIGxvb2tzIGdvb2QKPiB0byBtZS4KPiAKCkJlc3QgcmVnYXJkcwpE
YW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
