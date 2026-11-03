Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49952606A326
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 19:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iVIwPbRS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=M3LeSidB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qSea4LWgd491ouv8lHf9uuPl4/xfoXUF0E3vXKnyLNw=; b=iVIwPbRSC2DjJMhEtH8PUcB9AE
	Egw7rYJlCY0TE2KWcWIDx9YGXJEcEuVPMlZ4AdyOVK+XnSRxhnzRsYMIp9R9AVZA3O5Ra2DNsge/u
	QNG9CxkPb3yFpA3RtsKvRXoPZIvD4rIsx7h35xjSXT8peaVz4qY5z+WcTsYGiXqCG7rk+He+dEn5Y
	+zjy+yNgOJlM7P2Yy/P+WRZlJ1NI/P2rpDguLsoG9ufQq9Jso6d952SUuq92wILWP9ozmN0vYxoqw
	SryHTRfRYHR1Tc5eoXY/64AGIslf548+oRc5h198E0PlkNWX00b68X+vckGNwPoYme3xfBH7gYx2E
	ZXgqMpoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6i-00000003WDt-2NzT;
	Tue, 03 Nov 2026 19:23:44 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK6e-00000003WAm-0lxs
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 19:23:41 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-847ac7ccd85so2983245a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 11:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793733819; x=1794338619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=px9zdgpwFS81LrmsDCxEPDim7SV/QUfj3I75ZxFvQQQ=;
        b=M3LeSidBsbU7m0lUwksNpYIGqs8GaYa22LuLRBGXD07T+w/zvI4ays0PzeJ6o/6Ltf
         mXzSWwkIAsfj/YA1RZCT2lXnOUhFEAtb2vhx/bmneIoDK5livx3TJf51xlt4J32UWrUY
         En6UD+B4DLaMXWygJHQG1+OWrlJLPNoC2wcIu+LLJeCqI6lLPZmKZ/6grmEjA6WsIp10
         DzUq5ctTkGy51DbKj30GtyuErixdey3LgL5J7BBx4MjjXu4cFNd001kjNbOWj0q9eJdF
         0MWUbgEnqVudJPHzGF/CeSNAtP+lDyjI45SCrFeB8LHoCtmZbpYpsdhOLnblzJg58Hd9
         h8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793733819; x=1794338619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=px9zdgpwFS81LrmsDCxEPDim7SV/QUfj3I75ZxFvQQQ=;
        b=jZYnWHWArXzrimza6rFKJstLQdqQft+scqI6nvfilRaLhsvh7mHK7HyTKbwsmdgpEg
         cn8mRxxRHG1TSk6FLKuhKaDiUoT9y/oGzHjo8s5U1po3ayOlNnCQkYBmnaCpGS6oGJRU
         9nIkFiGGr1mGBzZCf7PRIFCD06My2c/vWYmIVtIPKqjfLDcDfY9ZAqaqR55M91i1v8Ex
         9AOAzndzQSxw4PhCV1T5laWtPyfMbCXduPQZQmrtAEiznFmlRw768oTQGX0TvAVNGp4Q
         AfWWbpip5ht0IRceGGf3bem8UKy+ootfUsoAMBmd3JUmqM1ocp/yYr/KpTybPX84ixr1
         +PhA==
X-Gm-Message-State: APuU4Z+4WNKP5K9y8iHEkI5qxlorUU4nuRm+L5hOJRJu5vmjbFeKXlkA
	kbXU4s0kOZAMNKEILp7Uiea/SbM6wfit74NZGUp5LredsWzEce6RU0gM7iExSK5g
X-Gm-Gg: AYBFou1MuYDqbM3sj5RYoW9nA3/C/1J5BV0TBP7zQgdsUiymqEQXQSgbQQBAKbFFv60
	GwN1rZXu7z8XQpcD+h1xmlAeY9KC41kVyoOtRlX99EL+R4Z8h8HAVbrqoDckN8oMgTLyr3uVHZM
	M8UE8l33+7aMv4t6Apj01ClOucv/+dOSiwitkHvyWa57RK6VA5maXJzv6MFlq+W0NzWb253cbF5
	qw873/0T2ji5/hfWsmkiYqL7AwOefCTUmxORhe65sGGZUsxnjyG/l5vwFE95YjLyo816DBXyETn
	mt6tIbEn5Pm2NKpLsOEW409qSAKEeUDHO+9BClb/QGZBXjFL14gn/z1+AGZrjsxPISp02TRyG23
	VlanEuLrtbvH6r3Gnlna1VJbLdeD1RWiaVwdw+US9GrCSk5149XQkpWbdM8MXfInOlfDBDD3hce
	k/TxxFMUAnaC/wXJJ/HV5znZX4qv0B22YcTpYfj00DTCb0KrEGJu/wmIwcDuHNX3Na1xd5ooljt
	EOzGJdSn6Ma7LTJrEr0zx43ZFck8qR74/RmhO+X3nDC6jT4rU1B94Z9U82UuY4Aeei8yN3BGrlp
	ar8Xf7k6vUm2H/V5gfMDKfvAhXDzhcGZm9Yu4G5A8YC+K/ZVsqY=
X-Received: by 2002:a05:6830:43aa:b0:828:d647:332c with SMTP id 46e09a7af769-85d3647359dmr9188302a34.25.1793733819011;
        Tue, 03 Nov 2026 11:23:39 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3e16ef1sm43323a34.14.2026.11.03.11.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:23:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	david@ixit.cz,
	detlev.casanova@collabora.com,
	maz@kernel.org,
	michael.riesch@collabora.com,
	diederik@cknow-tech.com,
	shawn.lin@rock-chips.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@kernel.org,
	daniel.lezcano@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Tue,  3 Nov 2026 13:23:30 -0600
Message-ID: <20261103192331.394489-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261103192331.394489-1-macroalpha82@gmail.com>
References: <20261103192331.394489-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_112340_217672_272B208A 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for Rockchip RK3568 timer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 6d0eb0014eee..b245a3051d66 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
               - rockchip,rk3368-timer
+              - rockchip,rk3568-timer
               - rockchip,rk3576-timer
               - rockchip,rk3588-timer
               - rockchip,px30-timer
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
