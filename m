Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 327EFC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq3VjpD8XSCHmRlwBZDo4LAkznvgH00ZJGvUiJAS2mM=; b=sZzd9xp8JuFRw/
	x5G6UVMdGFC3l9TB/aY9j54B8Y43UcN+bZJTeV1/OQ2kYW2o2yDJfEhfyBAUV41Eq1rkOqtPTwRvq
	ZdK+PGiW/RCnKRCZ87J0KSIPjCqci7BD/Wa2sDuH/cZFG5ISxZrURTIwt+1KvSJdPTeTWcRcKCxcl
	gyJoCVulCJhpYOSEcAwO+OAzyKCH0iNXDWys8lofHrmDYWaEDufOmLHjKB+QIqLD3kfLFiHxEuZq/
	nKbJ3Co8lPOnQV8nOSq2t+ZAvCkLt2JRlGI+6KhuhTNvjOJsgcRDouHFE7uZjaEjTWr0makwyrFzW
	xyMdeZW+bTb3HNzoxJbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCr1-00127T-4y; Thu, 08 Sep 2022 08:25:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCqz-00125v-0L
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 08:25:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D8D5AB8204C;
	Thu,  8 Sep 2022 08:25:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AE46C433D6;
	Thu,  8 Sep 2022 08:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662625535;
	bh=TY+bR3xM8jJob7jJVW+5UA7Dqo3BBJm/pD4n/DrdbCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CovvPg9ixES3s4j8IJzJZfCddqtNjBPCOvUEVncdSRAJoACTBB7tPkk249yMey9vP
	 4/5s7t7MfhY8WflQvz5OZ1/gV+BP+rRwToAGA2yNTPsugadN0CnDagL9pSnbH2cuoP
	 gCMzYQcWn8Qkly2bU+RFrmxTV4pruFsGYBfEoPBOitBBnxipTfMIr/ThQtYRJXiK6C
	 msPzBMJINqikQz3l3U7yr6XFvSKHQ3aSrgxNmVd9Z4tw9fN8mmpLNj+2D9VawTYs5+
	 3fa83F1/6jfDqu4oC1CSt6q7PrI49Y0bpqx95GOMclfONmPJV/9y1ink/TYNvZm4KO
	 ClsT4+Un5sSAg==
Date: Thu, 8 Sep 2022 09:25:29 +0100
From: Lee Jones <lee@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, zhangqing@rock-chips.com,
	zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
	sre@kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, philip@pscan.uk, mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V10 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <Yxmm+VB6CjpACB7f@google.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220827021623.23829-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_012541_208800_7CBD292E 
X-CRM114-Status: GOOD (  11.13  )
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

T24gRnJpLCAyNiBBdWcgMjAyMiwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IENyZWF0ZSBkdC1iaW5kaW5nIGRv
Y3VtZW50YXRpb24gdG8gZG9jdW1lbnQgcms4MTcgYmF0dGVyeSBhbmQgY2hhcmdlcgo+IHVzYWdl
LiBOZXcgZGV2aWNlLXRyZWUgcHJvcGVydGllcyBoYXZlIGJlZW4gYWRkZWQuCj4gCj4gLSByb2Nr
Y2hpcCxyZXNpc3Rvci1zZW5zZS1taWNyby1vaG1zOiBUaGUgdmFsdWUgaW4gbWljcm9vaG1zIG9m
IHRoZQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2FtcGxlIHJlc2lz
dG9yLgo+IC0gcm9ja2NoaXAsc2xlZXAtZW50ZXItY3VycmVudC1taWNyb2FtcDogVGhlIHZhbHVl
IGluIG1pY3JvYW1wcyBvZiB0aGUKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNsZWVwIGVudGVyIGN1cnJlbnQuCj4gLSByb2NrY2hpcCxzbGVlcC1maWx0ZXItY3Vy
cmVudDogVGhlIHZhbHVlIGluIG1pY3JvYW1wcyBvZiB0aGUgc2xlZXAKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBmaWx0ZXIgY3VycmVudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1h
eWEgTWF0dXN6Y3p5ayA8bWFjY3JhZnQxMjNtY0BnbWFpbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAtLS0K
PiAgLi4uL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxNy55YW1sICAgICAgICAgIHwgNTAgKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQoKQXBw
bGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
