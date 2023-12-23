Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0025C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 10:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sCHaQM5Ifmr4Yst50kfYlwa64sWMnucfKU7OlGZQKCI=; b=uFuq5PDHTtQTpMcWZl1cbhKHID
	70dHN2q9Q1V3+OEpK3AmxYVWD1/IYwCJu5mR2AYO9CJah0dQUCoHTnDxGOYM4iLUhmrIcpDn1Qnkj
	IJqL2BeDQ2YIpbwjNWD0oGvSClWpU08VCiyijqGdnuArFH70LHsne9O7WYFqOAfpPRYDfOk98bXKi
	DPEXVScgtGa0QgEqAa2ZdxOmVbsFR8GiYzYvCJZAZZuDzIh/AeXQC6EEqducGVO+Ng1ea2NdQnroy
	6Kolv4CFq7PrrvcaUfVcat4+toVnEFe1vWxR40b42WozjJX1fCE7s2mDLX8ShAQepZ5gFPuO++ssE
	ASProJKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGyyE-007emC-35;
	Sat, 23 Dec 2023 10:11:02 +0000
Received: from out-175.mta0.migadu.com ([91.218.175.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGyyC-007elF-15
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Dec 2023 10:11:02 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1703326253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QmLMeeiRP2f7TX9L962YovQ5Y3yGoVXBGDouYYc49K4=;
	b=MB7zvLWdw7hpD5X0RdqOg+HkMQvlvZjg2LD5pEHpGGQQhGVEH7YmQVcbW1nBrzeaYFYotH
	c5S8AIvI0WlKQGHncj1I6HAd4mh+5FxQuqZ+TyRKpUUy/BHo++WWX0V2ahNulbIkLvhLtj
	BSLSNYBIv1+Dlff3fZeC0aDjz5/aatVCKAfeOQgbaQ7ikeGbc6KkfV4iRmbJ3r9mI6GonT
	GJokMj3dvqe0uMe7b4KTiUki2l1ZjDC47hA7M84ZCugZ/pw6qTJJLM8vBviHrQNkTwIqUi
	LFu3uCRznC9TjmPVyxWpBNr4F+x1bW6kH8BHn/9BeARub+MXoCclpGB4T1rK3A==
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Cc: Dang Huynh <danct12@riseup.net>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add devicetree for Pine64 Pinetab2
Date: Sat, 23 Dec 2023 11:10:37 +0100
Message-ID: <4078198.6LIMefcGnG@bagend>
Organization: Connecting Knowledge
In-Reply-To: <2250271.fI8GBZLEnK@bagend>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net> <2250271.fI8GBZLEnK@bagend>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_021100_800398_23BC8D55 
X-CRM114-Status: UNSURE (   7.21  )
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
Content-Type: multipart/mixed; boundary="===============8318645617593324643=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8318645617593324643==
Content-Type: multipart/signed; boundary="nextPart6043418.jiUF25o1rD";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6043418.jiUF25o1rD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Cc: Dang Huynh <danct12@riseup.net>
Date: Sat, 23 Dec 2023 11:10:37 +0100
Message-ID: <4078198.6LIMefcGnG@bagend>
Organization: Connecting Knowledge
In-Reply-To: <2250271.fI8GBZLEnK@bagend>
MIME-Version: 1.0

On Friday, 22 December 2023 17:49:35 CET Diederik de Haas wrote:
> I've added 'Danct12' to the To list as they are the maintainer of the
> primary PT2 image and we worked together to get to this audio config.

Apparently I had an old email address, it should be danct12@riseup.net.
--nextPart6043418.jiUF25o1rD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZYayHQAKCRDXblvOeH7b
bhA6AP0SiaK89Gu8Xpt2gS1jPtZyB/Ejv9z0c85d34OuovHSnAEAxl8dJ2t8RrUC
zPo0CRNx1E8P6xa42K0kMrVrV4z5og8=
=Ntvm
-----END PGP SIGNATURE-----

--nextPart6043418.jiUF25o1rD--





--===============8318645617593324643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8318645617593324643==--




